//
//  CustomizingAnimationsView.swift
//  Animations
//
//  Created by Sean Dooley on 07/11/2024.
//

import SwiftUI

struct CustomizingAnimationsView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        VStack {
//            Button("Tap Me") {
//                animationAmount += 1
//            }
//            .padding(50)
//            .background(.red)
//            .foregroundStyle(.white)
//            .clipShape(.circle)
//            .scaleEffect(animationAmount)
//            .animation(.linear, value: animationAmount)
            
//            Button("Tap Me") {
//                animationAmount += 1
//            }
//            .padding(50)
//            .background(.red)
//            .foregroundStyle(.white)
//            .clipShape(.circle)
//            .scaleEffect(animationAmount)
//            .animation(.spring(duration: 1, bounce: 0.9), value: animationAmount)
            
//            Button("Tap Me") {
//                animationAmount += 1
//            }
//            .padding(50)
//            .background(.red)
//            .foregroundStyle(.white)
//            .clipShape(.circle)
//            .scaleEffect(animationAmount)
//            .animation(
//                .easeInOut(duration: 2)
//                    .delay(2),
//                value: animationAmount
//            )
            
//            Button("Tap Me") {
//                animationAmount += 1
//            }
//            .padding(50)
//            .background(.red)
//            .foregroundStyle(.white)
//            .clipShape(.circle)
//            .scaleEffect(animationAmount)
//            .animation(
//                .easeInOut(duration: 1)
//                    .repeatCount(3, autoreverses: true),
//                value: animationAmount
//            )
            
//            Button("Tap Me") {
//                animationAmount += 1
//            }
//            .padding(50)
//            .background(.red)
//            .foregroundStyle(.white)
//            .clipShape(.circle)
//            .scaleEffect(animationAmount)
//            .animation(
//                .easeInOut(duration: 1)
//                    .repeatForever(autoreverses: true),
//                value: animationAmount
//            )
            
                Button("Tap Me") {
//                    animationAmount += 1
                }
                .padding(50)
                .background(.red)
                .foregroundStyle(.white)
                .clipShape(.circle)
                .overlay {
                    Circle()
                        .stroke(.red)
                        .scaleEffect(animationAmount)
                        .opacity(2 - animationAmount)
                        .animation(
                            .easeInOut(duration: 1)
                                .repeatForever(autoreverses: false),
                            value: animationAmount
                        )
                }
                .onAppear {
                    animationAmount = 2
                }
        }
        .padding()
    }
}

#Preview {
    CustomizingAnimationsView()
}
