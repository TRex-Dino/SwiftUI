//
//  ButtonsAndImages.swift
//  Project2
//
//  Created by Меньков Д.В. on 30/1/23.
//

import SwiftUI

struct ButtonsAndImages: View {
    var body: some View {
        
        Button {
            print("")
        } label: {
//            Image(systemName: "pencil")
//                .renderingMode(.original) - original color
            Label("Edit", image: "pencil")
        }
        
    }
}

struct CustomButton: View {
    var body: some View {
        Button {
            print("")
        } label: {
            Text("Tap me")
                .padding()
                .foregroundColor(.white)
                .background(.red)
        }
    }
}

struct BasicButtons: View {
    var body: some View {
//        Button("Delete selection", role: .destructive) {
//            print("now deleting")
//        }
        
        VStack {
            Button("Button 1") {}
                .buttonStyle(.bordered)
            Button("Button 2", role: .destructive) {}
                .buttonStyle(.bordered)
            Button("Button 3") {}
                .buttonStyle(.borderedProminent)
                .tint(.mint)
            Button("Button 4", role: .destructive) {}
                .buttonStyle(.borderedProminent)
        }
    }
}

struct ButtonsAndImages_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsAndImages()
    }
}
