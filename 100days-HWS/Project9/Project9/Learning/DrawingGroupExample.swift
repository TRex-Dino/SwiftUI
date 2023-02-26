//
//  DrawingGroupExample.swift
//  Project9
//
//  Created by Меньков Д.В. on 25/2/23.
//

import SwiftUI

struct ColorCyclingCircle: View {
    var amount = 0.0
    let steps = 100

    var body: some View {
        ZStack {
            ForEach(0..<steps, id: \.self) { value in
                Rectangle()
//                Circle()
                    .inset(by: Double(value))
                    .foregroundStyle(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                color(for: value, brightness: 1),
                                color(for: value, brightness: 0.5)
                            ]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
//                    .strokeBorder(
//                        LinearGradient(
//                            gradient: Gradient(colors: [
//                                color(for: value, brightness: 1),
//                                color(for: value, brightness: 0.5)
//                            ]),
//                            startPoint: .top,
//                            endPoint: .bottom
//                        ),
//                        lineWidth: 50
//                    )
//                    .strokeBorder(color(for: value, brightness: 1), lineWidth: 2)
            }
        }
        .drawingGroup()
    }

    func color(for value: Int, brightness: Double) -> Color {
        var targetHue = Double(value) / Double(steps) + amount

        if targetHue > 1 {
            targetHue -= 1
        }

        return Color(hue: targetHue, saturation: 1, brightness: brightness)
    }
}

struct DrawingGroupExample: View {
    @State private var colorCycle = 0.0
    
    var body: some View {
        VStack {
            ColorCyclingCircle(amount: colorCycle)
                .frame(width: 300, height: 300)
            
            Slider(value: $colorCycle)
        }
    }
}

struct DrawingGroupExample_Previews: PreviewProvider {
    static var previews: some View {
        DrawingGroupExample()
    }
}
