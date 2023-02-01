//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUI-Start
//
//  Created by Меньков Д.В. on 27/1/23.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .foregroundColor(.white)
            .font(.system(size: 40))
            .background(
            Circle()
                .fill(
                    LinearGradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))],
                                   startPoint: .leading,
                                   endPoint: .trailing)
                )
                .frame(width: 100, height: 100)
                .shadow(color: .blue.opacity(0.6), radius: 10, x: 0, y: 10)
                .overlay(alignment: .bottomTrailing, content: {
                    Circle()
                        .fill(.blue.opacity(0.6))
                        .frame(width: 35, height: 35)
                        .overlay {
                            Text("1")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        .shadow(color: .blue, radius: 10, x: 5, y: 5)
                })
            )
//        Rectangle()
//            .frame(width: 100, height: 100, alignment: .center)
//            .overlay(alignment: .topLeading) {
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: 50, height: 50)
//            }
//            .background(alignment: .bottomLeading) {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150)
//            }
        
        /* -overlay-
        Circle()
            .fill(.pink)
            .frame(width: 100)
            .overlay(
                Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            )
            .background(
                Circle()
                    .fill(.purple)
                    .frame(width: 120, height: 120)
            )
         */
        
        /* -Background-
        Text("Hello, World!")
            
            .background(
//                Color.red
                
//                LinearGradient(
//                    gradient: Gradient(colors: [.red, .blue]),
//                    startPoint: .leading,
//                    endPoint: .trailing
//                )
                Circle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100, alignment: .center)
            )
            
            .background(
                Circle()
                    .fill(Color.red)
                    .frame(width: 120, height: 120, alignment: .center)
            )
         */
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
