//
//  ControllingAnimationStackView.swift
//  Animations
//
//  Created by Sean Dooley on 11/11/2024.
//

import SwiftUI

struct ControllingAnimationStackView: View {
    @State private var enabled = false
    
    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        .background(enabled ? .blue : .red)
        .frame(width: 200, height: 200)
        .foregroundStyle(.white)
        .animation(.default, value: enabled)
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
        
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .red : .blue)
        .foregroundStyle(.white)
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
        .animation(.default, value: enabled)
        
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .animation(nil, value: enabled)
        .foregroundStyle(.white)
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
        .animation(.spring(duration: 1, bounce: 0.6), value: enabled)
    }
}

#Preview {
    ControllingAnimationStackView()
}
