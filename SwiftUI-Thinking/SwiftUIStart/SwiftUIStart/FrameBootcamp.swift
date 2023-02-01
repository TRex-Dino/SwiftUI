//
//  FrameBootcamp.swift
//  SwiftUI-Start
//
//  Created by Меньков Д.В. on 25/1/23.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World!")
            .background(.green)
//            .frame(width: 100, height: 100, alignment: .center)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(.red)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
