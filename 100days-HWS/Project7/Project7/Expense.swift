//
//  Expense.swift
//  Project7
//
//  Created by Меньков Д.В. on 20/2/23.
//

import Foundation

class Expenses: ObservableObject {
    @Published var personalItems = [ExpenseItem]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(personalItems) {
                UserDefaults.standard.set(encoded, forKey: "PersonalItems")
            }
        }
    }
    
    @Published var businessItems = [ExpenseItem]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(businessItems) {
                UserDefaults.standard.set(encoded, forKey: "BusinessItems")
            }
        }
    }
    
    init() {
        if let savedItems = UserDefaults.standard.data(forKey: "PersonalItems"),
           let decodedItems = try? JSONDecoder().decode([ExpenseItem].self, from: savedItems) {
                personalItems = decodedItems
        } else {
            personalItems = []
        }
        
        if let savedItems = UserDefaults.standard.data(forKey: "BusinessItems"),
           let decodedItems = try? JSONDecoder().decode([ExpenseItem].self, from: savedItems) {
            businessItems = decodedItems
        } else {
            businessItems = []
        }

        
    }
}
