//
//  DatePickerView.swift
//  Project4
//
//  Created by Меньков Д.В. on 1/2/23.
//

import SwiftUI

struct DatePickerView: View {
    @State private var wakeUp = Date.now
    
    var body: some View {
        DatePicker("Please enter a date",
                   selection: $wakeUp,
                   in: Date.now...)
//            .labelsHidden()
//        displayedComponents: .hourAndMinute
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
