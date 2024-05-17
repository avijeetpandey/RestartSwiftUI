//
//  OnboardingRingView.swift
//  RestartSwiftUI
//
//  Created by Avijeet on 17/05/24.
//

import SwiftUI

// MARK: - OnboardingRingView
struct OnboardingRingView: View {
    
    // MARK: - Property
    @State var shapeColor: Color
    @State var shapeOpacity: Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
            
            Image(.character1)
                .resizable()
                .scaledToFit()
        }
    }
}


#Preview {
    OnboardingRingView(shapeColor: .white, shapeOpacity: 0.2)
        .preferredColorScheme(.dark)
}
