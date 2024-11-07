//
//  ImplicitAnimationsView.swift
//  Animations
//
//  Created by Sean Dooley on 07/11/2024.
//

import SwiftUI

struct ImplicitAnimationsView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                animationAmount += 1
            }
            .padding(50)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
            .blur(radius: (animationAmount - 1) * 3)
            .animation(.default, value: animationAmount)
        }
        .padding()
    }
}

#Preview {
    ImplicitAnimationsView()
}
