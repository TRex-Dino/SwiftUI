//
//  PaddingBootcamp.swift
//  SwiftUI-Start
//
//  Created by Меньков Д.В. on 29/1/23.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            Text("This is description And bla bla bla bla bla bla bla")
        }
        .padding()
        .padding(.vertical, 20)
        .background(
            Color.white
                .cornerRadius(20)
                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
        
        )
    }
}

struct PaddingBootcampV1: View {
    var body: some View {
        Text("Hello, World!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, alignment: .leading)
//            .background(.red)
            .padding(.leading, 20)
        
//            .padding(.all, 10)
//            .padding()
//            .background(.purple)
    }
}

struct PaddingAndSpaceBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootcamp()
    }
}
