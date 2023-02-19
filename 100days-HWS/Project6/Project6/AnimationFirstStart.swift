//
//  AnimationFirstStart.swift
//  Project6
//
//  Created by Меньков Д.В. on 18/2/23.
//

import SwiftUI

struct AnimationFirstStart: View {
    @State private var animationAmount = 1.0
    var body: some View {
        Button("Tap me") {
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
//        .blur(radius: (animationAmount - 1) * 2)
        .animation(
            .easeInOut(duration: 1)
            .repeatCount(3, autoreverses: true),
//            .delay(1),
            value: animationAmount
        )
    }
}

struct AnimationFirstStart_Previews: PreviewProvider {
    static var previews: some View {
        AnimationFirstStart()
    }
}
