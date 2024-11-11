//
//  AnimatingGesturesView.swift
//  Animations
//
//  Created by Sean Dooley on 11/11/2024.
//

import SwiftUI

struct AnimatingGesturesView: View {
    // Store the amount of drag
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(.rect(cornerRadius: 10))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged { dragAmount = $0.translation }
                    //.onEnded { _ in dragAmount = .zero }
                    // an explicit animation to animate just the release
                    .onEnded { _ in
                        withAnimation(.bouncy) {
                            dragAmount = .zero
                        }
                    }
                
            )
            // an implicit animation that will animate the drag and the release
            //.animation(.bouncy, value: dragAmount)
    }
}

#Preview {
    AnimatingGesturesView()
}
