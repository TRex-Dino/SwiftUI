//
//  TextBootcamp.swift
//  SwiftUI-First-Try_25.01
//
//  Created by Меньков Д.В. on 25/1/23.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!")
//            .font(.body)
//            .fontWeight(.bold)
//            .bold()
//            .italic()
//            .underline(true, color: .red)
//            .strikethrough(true, color: .red)
//            .font(.system(size: 24, weight: .bold, design: .serif))
//            .baselineOffset(10)
//            .kerning(10)
            .multilineTextAlignment(.center)
            .foregroundColor(.blue)
            .frame(width: 50, height: 100, alignment: .center)
            .minimumScaleFactor(0.1)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
