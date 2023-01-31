//
//  RestartButton.swift
//  Challenge2
//
//  Created by Меньков Д.В. on 31/1/23.
//

import SwiftUI

struct RestartButton: View {
    let action: () -> Void
    var body: some View {
        Button("Restart Game", action: action)
            .foregroundColor(.white)
            .font(.headline)
            .padding()
            .background(
                LinearGradient(colors: [.blue, .green], startPoint: .leading, endPoint: .trailing)
            )
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(radius: 10)
    }
}
