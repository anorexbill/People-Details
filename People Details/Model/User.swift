//
//  User.swift
//  People Details
//
//  Created by Frimpong Anorchie II on 2021-12-21.
//

import Foundation

struct Users: Codable {
    var results: [User]
}

struct User: Codable {
    var name: Name
    var email: String
    var picture: Picture
}

struct Name: Codable {
    var title: String
    var first: String
    var last: String
    
    var fullName: String {
        [title, first, last].joined(separator: " ")
    }
}

struct Picture: Codable {
    var large: String
}
