//
//  Character.swift
//  Domain
//
//  Created by raulbot on 14/3/23.
//

import Foundation

public enum Gender {
    case female
    case male
    case genderless
    case unknown
}

public enum Status {
    case alive
    case dead
    case unknown
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
