//
//  OnboardingView.swift
//  RestartSwiftUI
//
//  Created by Avijeet on 17/05/24.
//

import SwiftUI

// MARK: - OnboardingView
struct OnboardingView: View {
    @State var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            Color(.colorBlue)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Spacer()
                OnboardingHeaderView(isAnimating: $isAnimating)
                Spacer()
                ZStack {
                    OnboardingRingView(shapeColor: .white, shapeOpacity: 0.2)
                    
                    Image(.character1)
                        .resizable()
                        .scaledToFit()
                        .opacity(isAnimating ? 1 : 0)
                        .animation(.easeOut(duration: 0.5), value: isAnimating)
                }
                
                
                Spacer()
                OnboardingFooterView(isAnimating: $isAnimating)
            }
        }.onAppear {
            isAnimating = true
        }
    }
}

#Preview {
    OnboardingView()
}
