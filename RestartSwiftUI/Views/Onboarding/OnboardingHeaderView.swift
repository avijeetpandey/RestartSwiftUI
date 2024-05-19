//
//  OnboardingHeaderView.swift
//  RestartSwiftUI
//
//  Created by Avijeet on 17/05/24.
//

import SwiftUI

// MARK: - OnboardingHeaderView
struct OnboardingHeaderView: View {
    @Binding var isAnimating: Bool
    
    var body: some View {
        VStack {
            Text("Share.")
                .font(.system(size: 60))
                .fontWeight(.heavy)
                .foregroundStyle(.white)
            
            Text("""
                It's not how much we give but how much we love we put into giving.
                """)
            .font(.title3)
            .fontWeight(.light)
            .foregroundStyle(.white)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 10)
        }.opacity(isAnimating ? 1 : 0)
            .offset(y: isAnimating ? 0 : -40)
            .animation(.easeOut(duration: 1), value: isAnimating)
    }
}

#Preview {
    OnboardingHeaderView(isAnimating: .constant(true))
        .preferredColorScheme(.dark)
}
