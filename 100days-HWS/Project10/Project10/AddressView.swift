//
//  AddressView.swift
//  Project10
//
//  Created by Меньков Д.В. on 27/2/23.
//

import SwiftUI

struct AddressView: View {
    @ObservedObject var order: Order

    var body: some View {
        Form {
            Section {
                TextField("Name", text: $order.orderData.name)
                TextField("Street Address", text: $order.orderData.streetAddress)
                TextField("City", text: $order.orderData.city)
                TextField("Zip", text: $order.orderData.zip)
            }

            Section {
                NavigationLink {
                    CheckoutView(order: order)
                } label: {
                    Text("Check out")
                }
            }
            .disabled(!order.orderData.hasValidAddress)
        }
        .navigationTitle("Delivery details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddressView(order: Order())
    }
}
