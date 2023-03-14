//
//  MockCharacterRemoteEntity.swift
//  Data
//
//  Created by raulbot on 14/3/23.
//

import Foundation
@testable import Data

struct MockCharacterRemoteEntity {
    static let id1 = 1
    static let name1 = "Rick Sanchez"
    static let status1 = "Alive"
    static let species1 = "Human"
    static let type1 = ""
    static let origin1 = MockOriginRemoteEntity.givenOriginRemoteEntity()
    static let location1 = MockLocationRemoteEntity.givenLocationRemoteEntity()
    static let gender1 = "Male"
    static let imageUrl1 = "https://rickandmortyapi.com/api/character/avatar/1.jpeg"
    
    static let id2 = 2
    static let name2 = "Morty Smith"
    static let status2 = "Alive"
    static let species2 = "Human"
    static let type2 = ""
    static let origin2 = MockOriginRemoteEntity.givenOriginRemoteEntity()
    static let location2 = MockLocationRemoteEntity.givenLocationRemoteEntity()
    static let gender2 = "Male"
    static let imageUrl2 = "https://rickandmortyapi.com/api/character/avatar/2.jpeg"
    
    static func givenCharacterRemoteEntity1(id: Int? = id1, name: String? = name1, imageUrl: String? = imageUrl1) -> CharacterRemoteEntity {
        return CharacterRemoteEntity(id: id, name: name, status: status1, species: species1, type: type1, origin: origin1, location: location1, gender: gender1, imageUrl: imageUrl)
    }
    
    static func givenCharacterRemoteEntity2() -> CharacterRemoteEntity {
        return CharacterRemoteEntity(id: id2, name: name2, status: status2, species: species2, type: type2, origin: origin2, location: location2, gender: gender2, imageUrl: imageUrl2)
    }
}
