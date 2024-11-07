//
//  ExplicitAnimationsView.swift
//  Animations
//
//  Created by Sean Dooley on 07/11/2024.
//

import SwiftUI

struct ExplicitAnimationsView: View {
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Tap Me") {
//            withAnimation {
//                animationAmount += 360
//            }
            withAnimation(.spring(duration: 1, bounce: 0.5)) {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
//        .rotation3DEffect(.degrees(animationAmount), axis: (x: 1, y: 0, z: 0))
//        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
//        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 0, z: 1))
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 1, y: 1, z: 1))
    }
}

#Preview {
    ExplicitAnimationsView()
}
