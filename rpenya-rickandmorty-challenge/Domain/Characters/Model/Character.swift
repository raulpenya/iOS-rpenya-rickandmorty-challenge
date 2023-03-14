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
    case none = ""
    
    public init(rawValue: String) {
        switch rawValue {
        case "Female": self = .female
        case "Male": self = .male
        case "Genderless": self = .genderless
        case "unknown": self = .unknown
        default: self = .none
        }
    }
}

public enum Status: String {
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
    case none = ""
    
    public init(rawValue: String) {
        switch rawValue {
        case "Alive": self = .alive
        case "Dead": self = .dead
        case "unknown": self = .unknown
        default: self = .none
        }
    }
}

public struct Character {
    public let id: String
    public let name: String
    public let status: Status
    public let species: String?
    public let type: String?
    public let gender: Gender
    public let originName: String?
    public let locationName: String?
    public let imageUrl: String
    
    public init(id: String, name: String, status: Status, species: String?, type: String?, gender: Gender, originName: String?, locationName: String?, imageUrl: String) {
        self.id = id
        self.name = name
        self.status = status
        self.species = species
        self.type = type
        self.gender = gender
        self.originName = originName
        self.locationName = locationName
        self.imageUrl = imageUrl
    }
}
