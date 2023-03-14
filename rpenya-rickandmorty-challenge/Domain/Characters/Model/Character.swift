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
    let id: String
    let name: String
    let status: Status
    let species: String
    let type: String
    let gender: Gender
    let origin: String
    let location: String
    let imageUrl: String
}
