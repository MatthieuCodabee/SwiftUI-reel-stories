//
//  User.swift
//  Reel&Stories
//
//  Created by matthieu passerel on 21/12/2023.
//

import Foundation

struct User: Identifiable {
    var id = UUID()
    var username: String
    var imageUrl: String
    var stories: [Story]
}
