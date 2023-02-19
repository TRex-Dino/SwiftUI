//
//  AnswerImage.swift
//  Challenge3
//
//  Created by Меньков Д.В. on 19/2/23.
//

import SwiftUI

struct AnswerImage: View {
    let isCorrect: Bool
    private var name: String {
        isCorrect ? "checkmark.circle.fill" : "xmark.square.fill"
    }
    var body: some View {
        Image(systemName: name)
            .foregroundColor(isCorrect ? .green : .red)
    }
}
struct AnswerImage_Previews: PreviewProvider {
    static var previews: some View {
        AnswerImage(isCorrect: false)
    }
}
