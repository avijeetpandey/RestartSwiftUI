//
//  ContentView.swift
//  RestartSwiftUI
//
//  Created by Avijeet on 17/05/24.
//

import SwiftUI

struct RootView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    var body: some View {
        if isOnboardingViewActive {
            OnboardingView()
        } else {
            HomeView()
        }
    }
}

#Preview {
    RootView()
}
