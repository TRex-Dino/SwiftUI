//
//  Project11App.swift
//  Project11
//
//  Created by Меньков Д.В. on 1/3/23.
//

import SwiftUI

@main
struct Project11App: App {
    
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            BookwormView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
