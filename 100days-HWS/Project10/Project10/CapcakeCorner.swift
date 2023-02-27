//
//  CapcakeCorner.swift
//  Project10
//
//  Created by Меньков Д.В. on 27/2/23.
//

import SwiftUI

struct CapcakeCorner: View {
    @StateObject var order = Order()
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Select your cake type", selection: $order.orderData.type) {
                        ForEach(Order.types.indices, id: \.self) {
                            Text(Order.types[$0])
                        }
                    }

                    Stepper("Number of cakes: \(order.orderData.quantity)", value: $order.orderData.quantity, in: 3...20)
                }
                
                Section {
                    Toggle("Any special requests?", isOn: $order.orderData.specialRequestEnabled.animation())

                    if order.orderData.specialRequestEnabled {
                        Toggle("Add extra frosting", isOn: $order.orderData.extraFrosting)

                        Toggle("Add extra sprinkles", isOn: $order.orderData.addSprinkles)
                    }
                }
                
                Section {
                    NavigationLink {
                        AddressView(order: order)
                    } label: {
                        Text("Delivery details")
                    }
                }
            }
            .navigationTitle("Cupcake Corner")
        }
    }
}

struct CapcakeCorner_Previews: PreviewProvider {
    static var previews: some View {
        CapcakeCorner()
    }
}
