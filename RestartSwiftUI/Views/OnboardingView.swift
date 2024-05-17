//
//  OnboardingView.swift
//  RestartSwiftUI
//
//  Created by Avijeet on 17/05/24.
//

import SwiftUI

// MARK: - OnboardingView
struct OnboardingView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            Color(.colorBlue)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Spacer()
                OnboardingHeaderView()
                Spacer()
                OnboardingRingView()
                Spacer()
                OnboardingFooterView()
                    .onTapGesture {
                        isOnboardingViewActive.toggle()
                    }
            }
        }
    }
}

#Preview {
    OnboardingView()
}
