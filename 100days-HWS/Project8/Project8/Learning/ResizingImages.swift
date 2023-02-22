//
//  ResizingImages.swift
//  Project8
//
//  Created by Меньков Д.В. on 20/2/23.
//

import SwiftUI

struct ResizingImages: View {
    var body: some View {
        GeometryReader { geo in
            Image("aldrin")
            .resizable()
//            .scaledToFit()
            .scaledToFill()
            .frame(width: geo.size.width * 0.9, height: 200, alignment: .center)
            .frame(width: geo.size.width, height: geo.size.height)
            //            .clipped()
        }
    }
}

struct ResizingImages_Previews: PreviewProvider {
    static var previews: some View {
        ResizingImages()
    }
}
