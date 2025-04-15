//
//  Reel.swift
//  Reel&Stories
//
//  Created by matthieu passerel on 21/12/2023.
//

import Foundation

struct Reel: Identifiable {
    var id = UUID()
    var url: String
    var type: MediaType
    var duration: Double
    var user: User
}
