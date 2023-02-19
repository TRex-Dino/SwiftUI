//
//  BetterRest.swift
//  Project4
//
//  Created by Меньков Д.В. on 1/2/23.
//

import CoreML
import SwiftUI

struct BetterRest: View {
    
    @State private var wakeUp = defaultWakeTime
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
//    @State private var alertTitle = ""
//    @State private var alertMessage = ""
//    @State private var showingAlert = false
    
    static var defaultWakeTime: Date {
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        return Calendar.current.date(from: components) ?? Date.now
    }
    
    var calculateBedtime: String {
        let message: String
        do {
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)
            
            let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
            let hour = (components.hour ?? 0) * 60 * 60
            let minute = (components.minute ?? 0) * 60
            
            let prediction = try model.prediction(wake: Double(hour + minute), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
            
            let sleepTime = wakeUp - prediction.actualSleep
            
            message = sleepTime.formatted(date: .omitted, time: .shortened)
        }
        catch {
            message = "Sorry there is a problem calculating your bedtime"
        }
        return message
    }
    
    var body: some View {
        NavigationView {
            Form {
                
                Section("When do you want to wake up?") {
                    HStack {
                        Spacer()
                        DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                            .labelsHidden()
                        
                    }
                }
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("Desired amount of sleep")
                        .font(.headline)
                    
                    Stepper("\(sleepAmount.formatted()) hours",
                            value: $sleepAmount,
                            in: 4...12,
                            step: 0.25)
                }
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("Daily coffee intake")
                        .font(.headline)
                    Picker(coffeeAmount == 0 ? "1 cup" : "\(coffeeAmount+1) cups",
                           selection: $coffeeAmount) {
                        ForEach(1..<21) { index in
                            Text("\(index)")
                        }
                    }
                }
                
                Section {
                    Text("Your ideal bedtime is \(calculateBedtime)")
                }
                
            }
            .navigationTitle("BetterRest")
//            .toolbar {
//                Button("Calculate", action: calculateBedtime)
//            }
//            .alert(alertTitle, isPresented: $showingAlert) {
//                Button("OK", action: {})
//            } message: {
//                Text(alertMessage)
//            }
        }
    }
    
//    func calculateBedtime() {
//        do {
//            let config = MLModelConfiguration()
//            let model = try SleepCalculator(configuration: config)
//
//            let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
//            let hour = (components.hour ?? 0) * 60 * 60
//            let minute = (components.minute ?? 0) * 60
//
//            let prediction = try model.prediction(wake: Double(hour + minute), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
//
//            let sleepTime = wakeUp - prediction.actualSleep
//            alertTitle = "Your ideal bedtime is..."
//            alertMessage = sleepTime.formatted(date: .omitted, time: .shortened)
//        } catch {
//            alertTitle = "Error"
//            alertMessage = error.localizedDescription
//        }
//
//        showingAlert = true
//    }
}

struct BetterRest_Previews: PreviewProvider {
    static var previews: some View {
        BetterRest()
    }
}