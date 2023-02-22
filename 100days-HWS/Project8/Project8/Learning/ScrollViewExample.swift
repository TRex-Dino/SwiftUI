//
//  ScrollViewExample.swift
//  Project8
//
//  Created by Меньков Д.В. on 21/2/23.
//

import SwiftUI

struct CustomText: View {
    let text: String

    var body: some View {
        Text(text)
    }

    init(_ text: String) {
        print("Creating a new CustomText")
        self.text = text
    }
}

struct ScrollViewExample: View {
    var body: some View {
        ScrollView {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 300, height: 300, alignment: .center)
            Spacer(minLength: 100)
            LazyVStack(spacing: 10) {
                ForEach(0..<100) {
                    CustomText("Item \($0)")
                            .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct ScrollViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewExample()
    }
}
