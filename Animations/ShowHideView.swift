//
//  ShowHideView.swift
//  Animations
//
//  Created by Sean Dooley on 11/11/2024.
//

import SwiftUI

struct ShowHideView: View {
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }

            if(isShowingRed)
            {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    //.transition(.scale)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

#Preview {
    ShowHideView()
}
