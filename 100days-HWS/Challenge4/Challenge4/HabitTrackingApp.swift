//
//  HabitTrackingApp.swift
//  Challenge4
//
//  Created by Меньков Д.В. on 26/2/23.
//

import SwiftUI

struct HabitListItemView: View {
    var name: String
    @State var count: Int
    
    var body: some View {
        HStack(alignment: .top) {
            Text(name)
                .font(.title2)
                .foregroundColor(.blue)
            Stepper(value: $count) {
                Text("Times: \(count)")
                    .font(.subheadline.bold())
                    .foregroundColor(.red)
            }
        }
    }
}

struct HabitTrackingApp: View {
    
    @State private var habits = [
        Habit(name: "Yoga", count: 0),
        Habit(name: "Guitar", count: 0),
        Habit(name: "Some", count: 0),
    ]
    @State private var showingAddExpense = false
    @State private var count = 0
    
    var body: some View {
        NavigationView {
            Form {
                List {
                    ForEach(habits) { item in
                        HabitListItemView(name: item.name, count: item.count)
                    }
                    .onDelete { offsets in
                        removeItems(at: offsets)
                    }
                }
                
            }
            .navigationTitle("My Habits")
            .toolbar {
                Button {
                    showingAddExpense = true
                } label: {
                    Image(systemName: "plus")
                }
                
            }
            .sheet(isPresented: $showingAddExpense) {
                AddHabit { name in
                    habits.append(Habit(name: name, count: 0))
                }
            }
        }
    }
    
    private func removeItems(at offsets: IndexSet) {
        habits.remove(atOffsets: offsets)
    }
}

struct HabitTrackingApp_Previews: PreviewProvider {
    static var previews: some View {
        HabitTrackingApp()
    }
}
