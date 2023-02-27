//
//  Result.swift
//  Project10
//
//  Created by Меньков Д.В. on 27/2/23.
//

import Foundation

struct Response: Codable {
    var results: [Result]
}

struct Result: Codable {
    var trackId: Int
    var trackName: String
    var collectionName: String
}
