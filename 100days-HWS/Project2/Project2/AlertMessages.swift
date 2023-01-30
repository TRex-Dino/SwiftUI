//
//  AlertMessages.swift
//  Project2
//
//  Created by Меньков Д.В. on 30/1/23.
//

import SwiftUI

struct AlertMessages: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show Alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("Delete", role: .destructive) {}
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Please read this")
        }
    }
}

struct AlertMessages_Previews: PreviewProvider {
    static var previews: some View {
        AlertMessages()
    }
}
