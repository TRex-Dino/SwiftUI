//
//  ChoiceText.swift
//  Challenge2
//
//  Created by Меньков Д.В. on 31/1/23.
//

import SwiftUI

struct ChoiceText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(.indigo)
            .font(.largeTitle.bold())
    }
}
