//
//  ShapesBootcamp.swift
//  SwiftUI-First-Try_25.01
//
//  Created by Меньков Д.В. on 25/1/23.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .continuous)
//        Rectangle()
        RoundedRectangle(cornerRadius: 20)
//            .fill(.blue)
//            .stroke()
//            .foregroundColor(.red)
//            .stroke(lineWidth: 20)
//            .stroke(.orange, lineWidth: 20)
//            .stroke(.orange, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
//            .trim(from: 0, to: 0.5)
//            .stroke(.blue, lineWidth: 20)
        
        
            .frame(width: 200, height: 100)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
