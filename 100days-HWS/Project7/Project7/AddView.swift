//
//  AddView.swift
//  Project7
//
//  Created by Меньков Д.В. on 20/2/23.
//

import SwiftUI

struct AddView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var expenses: Expenses
    
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = 0.0

    private let types = ["Business", "Personal"]

    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)

                Picker("Type", selection: $type) {
                    ForEach(types, id: \.self) {
                        Text($0)
                    }
                }

                TextField("Amount", value: $amount, format: .currency(
                    code: Locale.current.currency?.identifier ?? "USD")
                )
                    .keyboardType(.decimalPad)
            }
            .navigationTitle("Add new expense")
            .toolbar {
                Button("Save") {
                    switch type {
                    case "Business":
                        let item = ExpenseItem(name: name, type: type, amount: amount)
                        expenses.businessItems.append(item)
                    default:
                        let item = ExpenseItem(name: name, type: type, amount: amount)
                        expenses.personalItems.append(item)
                    }
                    dismiss()
                }
            }
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(expenses: Expenses())
    }
}
