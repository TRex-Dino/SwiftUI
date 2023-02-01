//
//  ForEachBootcamp.swift
//  SwiftUI-Start
//
//  Created by Меньков Д.В. on 31/1/23.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["a", "b", "c"]
    
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                HStack {
                    Circle()
                        .frame(width: 15, height: 15)
                    
                    Text("Index is: \(index)")
                }
            }
        }
    }
}


struct ForEachBootcampV1: View {
    var body: some View {
        VStack {
            ForEach(0..<10) { index in
                HStack {
                    Circle()
                        .frame(width: 15, height: 15)
                    
                    Text("Index is: \(index)")
                }
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
