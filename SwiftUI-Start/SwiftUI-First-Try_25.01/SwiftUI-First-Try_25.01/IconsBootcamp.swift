//
//  IconsBootcamp.swift
//  SwiftUI-First-Try_25.01
//
//  Created by Меньков Д.В. on 25/1/23.
//

import SwiftUI

struct IconsBootcamp: View {
    let color = Color(#colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1))
    var body: some View {
        Heart1()
    }
}

struct Heart1: View {
    let color = Color(#colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1))
    var body: some View {
     Image(systemName: "heart.fill")
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFill()
//            .font(.title)
//            .font(.system(size: 200))
            .foregroundColor(color)
            .frame(width: 300, height: 300)
            .clipped()
    }
}


struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
