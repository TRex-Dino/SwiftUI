//
//  iExpense.swift
//  Project7
//
//  Created by Меньков Д.В. on 20/2/23.
//

import SwiftUI

struct TextAmount: View {
    let amount: Double
    
    var body: some View {
        Text(amount, format: .currency(
            code: Locale.current.currency?.identifier ?? "USD")
        )
        .foregroundColor(getColor())
    }
    
    private func getColor() -> Color {
        switch amount {
        case 10...100:
            return .orange
        case 100...:
            return .red
        default:
            return .green
        }
    }
}

struct iExpense: View {
    @StateObject var expenses = Expenses()
    
    @State private var showingAddExpense = false
    
    var body: some View {
        NavigationView {
            Form {
                Section("Business expenses:") {
                    List {
                        ForEach(expenses.businessItems) { item in
                            HStack {
                                VStack(alignment: .leading) {
                                    Text(item.name)
                                        .font(.headline)
//                                    Text(item.type)
                                }
                                
                                Spacer()
                                TextAmount(amount: item.amount)
                            }
                        }
                        .onDelete { offsets in
                            removeItems(at: offsets, type: "Business")
                        }
                    }
                }
                
                Section("Personal expenses:") {
                    List {
                        ForEach(expenses.personalItems) { item in
                            HStack {
                                VStack(alignment: .leading) {
                                    Text(item.name)
                                        .font(.headline)
//                                    Text(item.type)
                                }

                                Spacer()
                                TextAmount(amount: item.amount)
                            }
                        }
                        .onDelete { offsets in
                            removeItems(at: offsets, type: "Personal")
                        }
                    }
                }
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button {
                    showingAddExpense = true
                } label: {
                    Image(systemName: "plus")
                }
                
            }
            .sheet(isPresented: $showingAddExpense) {
                AddView(expenses: expenses)
            }
        }
    }
    
    private func removeItems(at offsets: IndexSet, type: String) {
        switch type {
        case "Business":
            expenses.businessItems.remove(atOffsets: offsets)
        default:
            expenses.personalItems.remove(atOffsets: offsets)
        }
    }
}

struct iExpense_Previews: PreviewProvider {
    static var previews: some View {
        iExpense()
    }
}
