//
//  LineView.swift
//  Project9
//
//  Created by Меньков Д.В. on 26/2/23.
//

import SwiftUI

struct LineView: View {
    @State var removeAll = false
    @State var lines = [CGPoint]()
    
    private func arrowPath() -> Path {
        // Doing it rightwards
        Path { path in
            path.move(to: .zero)
            path.addLine(to: .init(x: -10.0, y: 5.0))
            path.addLine(to: .init(x: -10.0, y: -5.0))
            path.closeSubpath()
        }
    }
    
    private func arrowTransform(lastPoint: CGPoint, previousPoint: CGPoint) -> CGAffineTransform {
        let translation = CGAffineTransform(translationX: lastPoint.x, y: lastPoint.y)
        let angle = atan2(lastPoint.y-previousPoint.y, lastPoint.x-previousPoint.x)
        let rotation = CGAffineTransform(rotationAngle: angle)
        return rotation.concatenating(translation)
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(20)
                .opacity(0.1)
                .shadow(color: .gray, radius: 4, x: 0, y: 2)
            Path { path in
                path.addLines(lines)
            }
            .stroke(lineWidth: 3)
            if lines.count >= 2 {
                arrowPath()
                    .transform(arrowTransform(lastPoint: lines[lines.count-1], previousPoint: lines[lines.count-2]))
                    .fill()
            }
        }
        .gesture(
            DragGesture()
                .onChanged { state in
                    if removeAll {
                        lines.removeAll()
                        removeAll = false
                    }
                    
                    lines.append(state.location)
                }
                .onEnded { _ in
                    removeAll = true
                }
        )
        .frame(width: 370, height: 500)
    }
}

struct LineView_Previews: PreviewProvider {
    static var previews: some View {
        LineView()
    }
}
