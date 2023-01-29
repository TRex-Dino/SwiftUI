//
//  ButtonAndState.swift
//  Project1
//
//  Created by Меньков Д.В. on 28/1/23.
//

import SwiftUI

struct ButtonAndState: View {
    
    @State private var count = 0
    
    var body: some View {
        Button("Tap count \(count)") {
            count += 1
        }
    }
}

struct ButtonAndState_Previews: PreviewProvider {
    static var previews: some View {
        ButtonAndState()
    }
}
