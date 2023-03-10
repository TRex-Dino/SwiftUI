//
//  StrokeBorderExample.swift
//  Project9
//
//  Created by Меньков Д.В. on 25/2/23.
//

import SwiftUI
struct Arc2: InsettableShape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool
    var insetAmount = 0.0
    
    func path(in rect: CGRect) -> Path {
        let rotationAdjustment = Angle.degrees(90)
        let modifiedStart = startAngle - rotationAdjustment
        let modifiedEnd = endAngle - rotationAdjustment

        var path = Path()
        path.addArc(center: CGPoint(x: rect.midX,
                                    y: rect.midY),
                    radius: rect.width / 2 - insetAmount,
                    startAngle: modifiedStart,
                    endAngle: modifiedEnd,
                    clockwise: !clockwise)

        return path
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var arc = self
        arc.insetAmount += amount
        return arc
    }
}
struct StrokeBorderExample: View {
    var body: some View {
        Arc2(startAngle: .degrees(-90), endAngle: .degrees(90), clockwise: true)
//            .stroke(.blue, lineWidth: 50)
            .strokeBorder(.blue, lineWidth: 40)
        
    }
}

struct StrokeBorderExample_Previews: PreviewProvider {
    static var previews: some View {
        StrokeBorderExample()
    }
}
