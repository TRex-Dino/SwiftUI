//
//  StateObjectExample.swift
//  Project7
//
//  Created by Меньков Д.В. on 20/2/23.
//

import SwiftUI

class UserClass: ObservableObject {
   @Published var firstName = "Bilbo"
   @Published var lastName = "Beggins"
}

struct StateObjectExample: View {
    @StateObject private var user = UserClass()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            
            TextField("First Name", text: $user.firstName)
            TextField("Last Name", text: $user.lastName)
        }
    }
}

struct StateObjectExample_Previews: PreviewProvider {
    static var previews: some View {
        StateObjectExample()
    }
}
