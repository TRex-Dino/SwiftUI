//
//  CustomPaths.swift
//  Project9
//
//  Created by Меньков Д.В. on 24/2/23.
//

import SwiftUI

struct CustomPaths: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 200, y: 100))
            path.addLine(to: CGPoint(x: 100, y: 300))
            path.addLine(to: CGPoint(x: 300, y: 300))
            path.addLine(to: CGPoint(x: 200, y: 100))
//            path.closeSubpath()
        }
//        .fill(.blue)
//        .stroke(.blue, lineWidth: 10)
        .stroke(.blue,
                style: StrokeStyle(lineWidth: 10,
                                   lineCap: .round,
                                   lineJoin: .round))
    }
}

struct CustomPaths_Previews: PreviewProvider {
    static var previews: some View {
        CustomPaths()
    }
}
