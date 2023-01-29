//
//  ContentView.swift
//  Challenge1
//
//  Created by Меньков Д.В. on 29/1/23.
//

import SwiftUI

enum Temperature: String, CaseIterable {
    case celsius = "Celsius"
    case fahrenheit = "Fahrenheit"
    case kelvin = "Kelvin"
}

struct ContentView: View {
    @State private var currentTemperature = Temperature.celsius
    @State private var convertTemperature = Temperature.celsius
    @State private var userTemperature: Double = 0
    @FocusState private var userTemperatureIsFocused: Bool
    
    private let kelvinConstant: Double = 273.15
    private let temperatures = Temperature.allCases
    
    private var calculatedTemperature: Double {
        switch (currentTemperature, convertTemperature) {
        case (.celsius, .kelvin):
            return userTemperature + kelvinConstant
        case (.celsius, .fahrenheit):
            return (5 / 9) * (userTemperature - 32)
        case (.kelvin, .celsius):
            return userTemperature - kelvinConstant
        case (.kelvin, .fahrenheit):
            return (5 / 9) * (userTemperature - 32) + kelvinConstant
        case (.fahrenheit, .celsius):
            return (9 * userTemperature / 5) + 32
        case (.fahrenheit, .kelvin):
            return (9 * (userTemperature - kelvinConstant) / 5) + 32
        default:
            return userTemperature
        }
        
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter your temperature", value: $userTemperature, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($userTemperatureIsFocused)
                } header: {
                    Text("Enter your temperature")
                }
                Section {
                    Picker("Current temperature", selection: $currentTemperature) {
                        ForEach(temperatures, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                } header: {
                    Text("Choose a temperature value")
                }
                
                Section {
                    Picker("Convert to", selection: $convertTemperature) {
                        ForEach(temperatures, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("Convert to")
                }
                
                Section {
                    Text(calculatedTemperature, format: .number)
                } header: {
                    Text("\(convertTemperature.rawValue) temperature is:")
                }
            }
            .navigationTitle("Temperature conversion")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        userTemperatureIsFocused = false
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
