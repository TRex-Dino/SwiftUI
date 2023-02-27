//
//  DisabledExample.swift
//  Project10
//
//  Created by Меньков Д.В. on 27/2/23.
//

import SwiftUI

struct DisabledExample: View {
    @State private var username = ""
    @State private var email = ""
    var disableForm: Bool {
        username.count < 5 || email.count < 5
    }
    var body: some View {
        Form {
            Section {
                TextField("Username", text: $username)
                TextField("Email", text: $email)
            }
            
            Section {
                Button("Create account") {
                    print("Creating account…")
                }
            }
//            .disabled(username.isEmpty || email.isEmpty)
            .disabled(disableForm)
            
        }
    }
    
}

struct DisabledExample_Previews: PreviewProvider {
    static var previews: some View {
        DisabledExample()
    }
}
