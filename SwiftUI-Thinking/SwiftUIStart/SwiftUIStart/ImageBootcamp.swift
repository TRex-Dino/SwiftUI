//
//  ImageBootcamp.swift
//  SwiftUI-Start
//
//  Created by Меньков Д.В. on 25/1/23.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("123")
            .resizable()
//            .aspectRatio(contentMode: .fill)
            .scaledToFit()
            .frame(width: 200, height: 200)
//            .clipped()
//            .cornerRadius(100)
            .clipShape(Circle())
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
