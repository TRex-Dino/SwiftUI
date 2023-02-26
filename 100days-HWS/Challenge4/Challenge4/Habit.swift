//
//  Habit.swift
//  Challenge4
//
//  Created by Меньков Д.В. on 26/2/23.
//

import Foundation

struct Habit: Identifiable {
    var id = UUID()
    let name: String
    let count: Int
}
