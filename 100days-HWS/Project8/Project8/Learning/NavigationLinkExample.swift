//
//  NavigationLinkExample.swift
//  Project8
//
//  Created by Меньков Д.В. on 22/2/23.
//

import SwiftUI

struct NavigationLinkExample: View {
    var body: some View {
        NavigationView {
            List(0..<100) { row in
                NavigationLink {
                    Text("Detail \(row)")
                } label: {
                    Text("Row \(row)")
                }
            }
            .navigationTitle("SwiftUI")
        }
//        NavigationView {
//            NavigationLink {
//                Text("Detail View")
//            } label: {
//                Text("Hello, world!")
//                    .padding()
//            }
//            .navigationTitle("SwiftUI")
//        }
    }
}

struct NavigationLinkExample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkExample()
    }
}
