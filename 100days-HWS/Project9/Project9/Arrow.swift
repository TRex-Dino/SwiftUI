//
//  Arrow.swift
//  Project9
//
//  Created by Меньков Д.В. on 26/2/23.
//

import SwiftUI

struct Arrow: Shape {
    
    var sizeAmount: Double
    
    var animatableData: Double {
        get { sizeAmount }
        set { sizeAmount = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        let yHalfSize = (rect.maxY - rect.midY) * sizeAmount
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX, y: (rect.midY - yHalfSize)))
        path.addLine(to: CGPoint(x: rect.maxX, y: (rect.midY - yHalfSize)))
        path.addLine(to: CGPoint(x: rect.maxX, y: (rect.midY + yHalfSize)))
        path.addLine(to: CGPoint(x: rect.midX, y: (rect.midY + yHalfSize)))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        return path
    }
}

struct ArrowView: View {
    @State private var sizeAmount = 0.6
    var body: some View {
        Arrow(sizeAmount: sizeAmount)
            .frame(width: 200, height: 100)
            .onTapGesture {
                withAnimation {
                    sizeAmount = Double.random(in: 0.1...0.9)
                }
            }
    }
}

struct ArrowView_Previews: PreviewProvider {
    static var previews: some View {
        ArrowView()
    }
}
