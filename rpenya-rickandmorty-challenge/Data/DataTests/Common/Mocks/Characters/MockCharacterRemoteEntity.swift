//
//  MockCharacterRemoteEntity.swift
//  Data
//
//  Created by raulbot on 14/3/23.
//

import Foundation
@testable import Data

struct MockCharacterRemoteEntity {
    static let id1 = ""
    static let name1 = ""
    static let status1 = ""
    static let species1 = ""
    static let type1 = ""
    static let origin1 = MockOriginRemoteEntity.givenOriginRemoteEntity()
    static let location1 = MockLocationRemoteEntity.givenLocationRemoteEntity()
    static let gender1 = ""
    static let imageUrl1 = ""
    
    static let id2 = ""
    static let name2 = ""
    static let status2 = ""
    static let species2 = ""
    static let type2 = ""
    static let origin2 = MockOriginRemoteEntity.givenOriginRemoteEntity()
    static let location2 = MockLocationRemoteEntity.givenLocationRemoteEntity()
    static let gender2 = ""
    static let imageUrl2 = ""
    
    static func givenCharacterRemoteEntity1() -> CharacterRemoteEntity {
        return CharacterRemoteEntity(id: id1, name: name1, status: status1, species: species1, type: type1, origin: origin1, location: location1, gender: gender1, imageUrl: imageUrl1)
    }
    
    static func givenCharacterRemoteEntity2() -> CharacterRemoteEntity {
        return CharacterRemoteEntity(id: id2, name: name2, status: status2, species: species2, type: type2, origin: origin2, location: location2, gender: gender2, imageUrl: imageUrl2)
    }
}
