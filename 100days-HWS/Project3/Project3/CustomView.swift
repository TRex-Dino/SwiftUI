//
//  CustomView.swift
//  Project3
//
//  Created by Меньков Д.В. on 30/1/23.
//

import SwiftUI

struct CapsuleText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(.blue)
            .clipShape(Capsule())
    }
}

struct CustomView: View {
    var body: some View {
        VStack {
            CapsuleText(text: "First")
            CapsuleText(text: "Second")
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        CustomView()
    }
}
