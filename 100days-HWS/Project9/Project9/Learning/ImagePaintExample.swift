//
//  ImagePaintExample.swift
//  Project9
//
//  Created by Меньков Д.В. on 25/2/23.
//

import SwiftUI

struct ImagePaintExample: View {
    var body: some View {
        Capsule()
            .strokeBorder(ImagePaint(image: Image("example"), scale: 0.1), lineWidth: 20)
            .frame(width: 300, height: 200)
//        Text("Hello 123")
//            .frame(width: 300, height: 300)
//            .background(.green)
//            .border(.red, width: 30)
//            .background(Image("example"))
//            .border(ImagePaint(image: Image("example"), scale: 0.2), width: 30)
//            .border(ImagePaint(image: Image("example"), sourceRect: CGRect(x: 0, y: 0.25, width: 1, height: 0.5), scale: 0.1), width: 30)
    }
}

struct ImagePaintExample_Previews: PreviewProvider {
    static var previews: some View {
        ImagePaintExample()
    }
}
