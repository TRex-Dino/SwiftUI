//
//  LazyGridsExample.swift
//  Project8
//
//  Created by Меньков Д.В. on 22/2/23.
//

import SwiftUI

struct LazyGridsExample: View {
    
//    let layout = [
//        GridItem(.fixed(80)),
//        GridItem(.fixed(80)),
//        GridItem(.fixed(80))
//    ]
    
//    let layout = [
//        GridItem(.adaptive(minimum: 80)),
//    ]
    
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120)),
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
//        ScrollView {
//            LazyVGrid(columns: layout) {
//                ForEach(0..<1000) {
//                    Text("Item \($0)")
//                }
//            }
//        }
    }
}

struct LazyGridsExample_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridsExample()
    }
}
