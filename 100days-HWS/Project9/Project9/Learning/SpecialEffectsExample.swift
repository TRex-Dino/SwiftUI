//
//  SpecialEffectsExample.swift
//  Project9
//
//  Created by Меньков Д.В. on 26/2/23.
//

import SwiftUI

struct SpecialEffectsExample: View {
    @State private var amount = 0.0

    var body: some View {
        VStack {
//            ZStack {
//                Circle()
//                    .fill(Color(red: 1, green: 0, blue: 0))
////                    .fill(.red)
//                    .frame(width: 200 * amount)
//                    .offset(x: -50, y: -80)
//                    .blendMode(.screen)
//
//                Circle()
//                    .fill(Color(red: 0, green: 1, blue: 0))
////                    .fill(.green)
//                    .frame(width: 200 * amount)
//                    .offset(x: 50, y: -80)
//                    .blendMode(.screen)
//
//                Circle()
//                    .fill(Color(red: 0, green: 0, blue: 1))
////                    .fill(.blue)
//                    .frame(width: 200 * amount)
//                    .blendMode(.screen)
//            }
//            .frame(width: 300, height: 300)
            Image("example")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .saturation(amount)
                .blur(radius: (1 - amount) * 20)
            
            Slider(value: $amount)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        .ignoresSafeArea()
    }
    
//    var body: some View {
//        Image("example")
//            .colorMultiply(.red)
//        ZStack {
//            Image("example")
//                .resizable()
//            Rectangle()
//                .fill(.red)
//                .blendMode(.multiply)
//        }
//        .frame(width: 400, height: 500)
//        .clipped()
//    }
}

struct SpecialEffectsExample_Previews: PreviewProvider {
    static var previews: some View {
        SpecialEffectsExample()
    }
}
