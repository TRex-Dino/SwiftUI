//
//  ScrollViewBootcamp.swift
//  SwiftUI-Start
//
//  Created by Меньков Д.В. on 31/1/23.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { _ in
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            
                            ForEach(0..<10) { _ in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                            
                        }
                    }
                }
            }
        }
    }
}

struct ScrollViewBootcampV1: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ForEach(0..<50) { _ in
                    Rectangle()
                        .fill(.blue)
                        .frame(height: 300)
                }
            }
        }
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
