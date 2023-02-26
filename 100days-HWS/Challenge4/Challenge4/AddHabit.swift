//
//  AddHabit.swift
//  Challenge4
//
//  Created by Меньков Д.В. on 26/2/23.
//

import SwiftUI

struct AddHabit: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    let saveAction: (String) -> Void
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
            }
            .navigationTitle("Add new expense")
            .toolbar {
                Button("Save") {
                    saveAction(name)
                    dismiss()
                }
            }
        }
    }
}

struct AddHabit_Previews: PreviewProvider {
    static var previews: some View {
        AddHabit { qw in
            
        }
    }
}
