//
//  CharacterRemoteEntity.swift
//  Data
//
//  Created by raulbot on 14/3/23.
//

import Foundation
import Domain

struct CharacterRemoteEntity: Decodable, Equatable {
    let id: String
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: String
    let location: String
    let imageUrl: String
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.id == rhs.id
    }
}

extension CharacterRemoteEntity {
    func transformToDomain() -> Character {
        return Character(id: id, name: name, status: Status(rawValue: status) ?? .unknown, species: species, type: type, gender: Gender(rawValue: gender) ?? .unknown, origin: origin, location: location, imageUrl: imageUrl)
    }
}
