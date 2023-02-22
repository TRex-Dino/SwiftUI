//
//  Mission.swift
//  Project8
//
//  Created by Меньков Д.В. on 22/2/23.
//

import Foundation

struct Mission: Decodable, Identifiable {
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    var displayName: String {
        "Apollo \(id)"
    }

    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
}

extension Mission {
    struct CrewRole: Decodable {
        let name: String
        let role: String
    }
}
