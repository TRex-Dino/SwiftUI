//
//  CodaBleExample.swift
//  Project7
//
//  Created by Меньков Д.В. on 20/2/23.
//

import SwiftUI

struct User: Codable {
    let firstName: String
    let lastName: String
}

struct CodableExample: View {
    @State private var user = User(firstName: "Taylor", lastName: "Swift")
    
    var body: some View {
        Button("save user") {
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
    }
}

struct CodaBleExample_Previews: PreviewProvider {
    static var previews: some View {
        CodableExample()
    }
}
