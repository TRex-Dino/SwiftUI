//
//  TextFieldView.swift
//  Project1
//
//  Created by Меньков Д.В. on 28/1/23.
//

import SwiftUI

struct TextFieldView: View {
    
    @State private var name = ""
    
    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Your name is \(name)")
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
