//
//  DeleteExample.swift
//  Project7
//
//  Created by Меньков Д.В. on 20/2/23.
//

import SwiftUI

/// Delete works only with forEach

struct DeleteExample: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1

    var body: some View {
        NavigationView {
            
            VStack {
                List {
                    ForEach(numbers, id: \.self) {
                        Text("Row \($0)")
                    }
                    .onDelete(perform: removeRows(at:))
                }
                
                Button("Add Number") {
                    numbers.append(currentNumber)
                    currentNumber += 1
                }
            }
            .navigationTitle("OnDelete")
            .toolbar {
                EditButton()
            }
        }
    }
    
    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
}

struct DeleteExample_Previews: PreviewProvider {
    static var previews: some View {
        DeleteExample()
    }
}
