//
//  CompImage.swift
//  Challenge2
//
//  Created by Меньков Д.В. on 31/1/23.
//

import SwiftUI

struct CompImage: View {
    let currentImage: String
    let color: Color
    
    var body: some View {
        Image(currentImage)
            .resizable()
            .frame(width: 150, height: 150, alignment: .center)
            .clipShape(Circle())
            .shadow(color: color, radius: 5, x: 0, y: 0)
        
    }
}

struct CompImage_Previews: PreviewProvider {
    static var previews: some View {
        CompImage(currentImage: "rock", color: .red)
    }
}
