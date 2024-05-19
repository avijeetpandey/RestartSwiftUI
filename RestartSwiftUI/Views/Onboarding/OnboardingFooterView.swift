//
//  OnboardingFooterView.swift
//  RestartSwiftUI
//
//  Created by Avijeet on 17/05/24.
//

import SwiftUI

// MARK: - OnboardingFooterView
struct OnboardingFooterView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    @State var buttonWidth: Double = UIScreen.main.bounds.width - 80
    @State var buttonOffset: CGFloat = 0
    @Binding var isAnimating: Bool
    
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
                    .frame(width: buttonOffset + 80)
                
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
                    .offset(x: buttonOffset)
                    .gesture(
                        DragGesture()
                            .onChanged{ gesture in
                                if gesture.translation.width > 0 && buttonOffset <= buttonWidth - 80 {
                                    buttonOffset = gesture.translation.width
                                }
                            }.onEnded { _ in
                                
                                if buttonOffset > buttonWidth/2 {
                                    buttonOffset = buttonWidth - 80
                                    isOnboardingViewActive = false
                                } else {
                                    buttonOffset = 0
                                }
                            }
                    )
                
                Spacer()
            }
            
        }.frame(width: buttonWidth, height: 80, alignment: .center)
            .padding()
            .offset(y: isAnimating ? 0 : 40)
            .animation(.easeInOut(duration: 1), value: isAnimating)
    }
}


#Preview {
    OnboardingFooterView(isAnimating: .constant(true))
        .preferredColorScheme(.dark)
}
