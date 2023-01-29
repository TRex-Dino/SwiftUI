//
//  NavigationViewContent.swift
//  Project1
//
//  Created by Меньков Д.В. on 28/1/23.
//

import SwiftUI

struct NavigationViewContent: View {
    var body: some View {
        NavigationView(content: {
            Form {
                Section {
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                }
                
                Section {
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                }
            }
            .navigationTitle("SwiftUI")
//            .navigationBarTitleDisplayMode(.inline)
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewContent()
    }
}
