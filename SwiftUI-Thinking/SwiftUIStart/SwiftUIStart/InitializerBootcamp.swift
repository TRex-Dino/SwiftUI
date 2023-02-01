//
//  InitializerBootcamp.swift
//  SwiftUI-Start
//
//  Created by Меньков Д.В. on 31/1/23.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(backgroundColor: Color,
         count: Int = 5,
         title: String = "Apple") {
        self.backgroundColor = backgroundColor
        self.count = count
        self.title = title
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()

            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        InitializerBootcamp(backgroundColor: .red)
    }
}
