//
//  OnboardingRingView.swift
//  RestartSwiftUI
//
//  Created by Avijeet on 17/05/24.
//

import SwiftUI

// MARK: - OnboardingRingView
struct OnboardingRingView: View {
    var body: some View {
        ZStack {
            Circle()
                .stroke(.white.opacity(0.2), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            
            Circle()
                .stroke(.white.opacity(0.2), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
            
            Image(.character1)
                .resizable()
                .scaledToFit()
        }
    }
}


#Preview {
    OnboardingRingView()
        .preferredColorScheme(.dark)
}
