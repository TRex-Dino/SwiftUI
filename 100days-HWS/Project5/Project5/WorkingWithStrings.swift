//
//  WorkingWithStrings.swift
//  Project5
//
//  Created by Меньков Д.В. on 2/2/23.
//

import SwiftUI

struct WorkingWithStrings: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    func checker() {
        let word = "swift"
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        let allGood = misspelledRange.location == NSNotFound
    }
    
    func test() {
        let input = """
                    a
                    b
                    c
                    """
        let letters = input.components(separatedBy: "\n")
        
        let letter = letters.randomElement()
        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

struct WorkingWithStrings_Previews: PreviewProvider {
    static var previews: some View {
        WorkingWithStrings()
    }
}
