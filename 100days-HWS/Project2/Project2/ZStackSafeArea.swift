//
//  ZStackSafeArea.swift
//  Project2
//
//  Created by Меньков Д.В. on 29/1/23.
//

import SwiftUI

struct ZStackSafeArea: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }
            Text("Your content")
//                .foregroundColor(.secondary)
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackSafeArea()
    }
}
