//
//  CustomModidiers.swift
//  Project3
//
//  Created by Меньков Д.В. on 30/1/23.
//

import SwiftUI

struct Watermark: ViewModifier {
    let text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(.black)
        }
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct CustomModidiers: View {
    var body: some View {
//        Text("Hello, World!")
//            .titleStyle()
        
        Color.blue
            .frame(width: 300, height: 300)
            .waterMarked(with: "your text")
    }
}

extension View {
    func waterMarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct CustomModidiers_Previews: PreviewProvider {
    static var previews: some View {
        CustomModidiers()
    }
}
