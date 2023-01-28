//
//  GradientsBootcamp.swift
//  SwiftUI-First-Try_25.01
//
//  Created by Меньков Д.В. on 25/1/23.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                LinearGradient(
//                    gradient: Gradient(colors: [.red, .blue]),
//                    startPoint: .leading,
//                    endPoint: .trailing
//                )
                
//                RadialGradient(
//                    gradient: Gradient(colors: [.red, .blue]),
//                    center: .trailing,
//                    startRadius: 50,
//                    endRadius: 250
//                )
                
                AngularGradient(
                    gradient: Gradient(colors: [.red, .blue]),
                    center: .topLeading,
                    angle: .degrees(180+45))
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
