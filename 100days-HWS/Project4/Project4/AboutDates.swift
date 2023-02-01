//
//  AboutDates.swift
//  Project4
//
//  Created by Меньков Д.В. on 1/2/23.
//

import SwiftUI

struct AboutDates: View {
    var body: some View {
//        Text(Date.now, format: .dateTime.day().month().year())
        Text(Date.now.formatted(date: .long, time: .shortened))
    }
    
    func trivialExample() {
//        var components = DateComponents()
//        components.hour = 8
//        components.minute = 0
//        let date = Calendar.current.date(from: components) ?? Date.now
        let components = Calendar.current.dateComponents([.hour, .minute], from: Date.now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
    }
}

struct AboutDates_Previews: PreviewProvider {
    static var previews: some View {
        AboutDates()
    }
}
