//
//  ExpenseItem.swift
//  Project7
//
//  Created by Меньков Д.В. on 20/2/23.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
