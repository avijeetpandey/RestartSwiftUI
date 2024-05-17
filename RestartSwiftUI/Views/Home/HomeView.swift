//
//  HomeView.swift
//  RestartSwiftUI
//
//  Created by Avijeet on 17/05/24.
//

import SwiftUI

// MARK: - HomeView
struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Image(.character2)
                .resizable()
                .scaledToFit()
                .padding()
            
            Text("The time that leads to mastery is dependent on the intensity of our focus")
                .font(.title3)
                .fontWeight(.light)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            
            Spacer()
            
            Button(action: {
                isOnboardingViewActive = true
            }) {
                
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }.buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
        }
    }
}

#Preview {
    HomeView()
}
