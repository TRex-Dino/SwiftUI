//
//  ChooseImage.swift
//  Challenge2
//
//  Created by Меньков Д.В. on 31/1/23.
//

import SwiftUI

struct ChooseImage: View {
    let currentImage: GameVariant
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(currentImage.rawValue)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .shadow(color: .cyan,
                        radius: 10, x: 0, y: 0)
        }
    }
}

struct ChooseImage_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            LinearGradient(colors: [.yellow, .blue], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Spacer()
                ChooseImage(currentImage: .paper) {
                    
                }
                Spacer()
            }
        }
    }
}
