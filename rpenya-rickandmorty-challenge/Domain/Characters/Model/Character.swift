//
//  Character.swift
//  Domain
//
//  Created by raulbot on 14/3/23.
//

import Foundation

public enum Gender: String {
    case female = "Female"
    case male = "Male"
    case genderless = "Genderless"
    case unknown = "unknown"
}

public enum Status: String {
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}

public struct Character {
    public let id: String
    public let name: String
    public let status: Status
    public let species: String
    public let type: String
    public let gender: Gender
    public let origin: String
    public let location: String
    public let imageUrl: String
    
    public init(id: String, name: String, status: Status, species: String, type: String, gender: Gender, origin: String, location: String, imageUrl: String) {
        self.id = id
        self.name = name
        self.status = status
        self.species = species
        self.type = type
        self.gender = gender
        self.origin = origin
        self.location = location
        self.imageUrl = imageUrl
    }
}
