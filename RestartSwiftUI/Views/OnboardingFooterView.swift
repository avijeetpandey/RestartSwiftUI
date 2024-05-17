//
//  OnboardingFooterView.swift
//  RestartSwiftUI
//
//  Created by Avijeet on 17/05/24.
//

import SwiftUI

// MARK: - OnboardingFooterView
struct OnboardingFooterView: View {
    var body: some View {
        ZStack {
            Capsule()
                .fill(.white.opacity(0.2))
            
            Capsule()
                .fill(.white.opacity(0.2))
                .padding(8)
            
            Text("Get Started")
                .font(.system(.title3, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .offset(x: 20)
            
            HStack {
                Capsule()
                    .fill(.colorRed)
                    .frame(width: 80)
                
                Spacer()
            }
            
            HStack {
                ZStack {
                    Circle()
                        .fill(.colorRed)
                    
                    Circle()
                        .fill(.black.opacity(0.15))
                        .padding(8)
                    
                    Image(systemName: "chevron.right.2")
                        .font(.system(size: 24, weight: .bold))
                    
                    
                }.foregroundStyle(.white)
                    .frame(width: 80, height: 80, alignment: .center)
                
                Spacer()
            }
            
        }.frame(height: 80, alignment: .center)
            .padding()
    }
}


#Preview {
    OnboardingFooterView()
        .preferredColorScheme(.dark)
}
