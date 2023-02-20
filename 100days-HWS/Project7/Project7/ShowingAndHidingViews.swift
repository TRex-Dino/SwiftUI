//
//  ShowingAndHidingViews.swift
//  Project7
//
//  Created by Меньков Д.В. on 20/2/23.
//

import SwiftUI

struct SecondView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        Button("Dismiss") {
            dismiss()
        }
    }
    
}

struct ShowingAndHidingViews: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        Button("Showing Sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView()
        }
    }
}

struct ShowingAndHidingViews_Previews: PreviewProvider {
    static var previews: some View {
        ShowingAndHidingViews()
    }
}
