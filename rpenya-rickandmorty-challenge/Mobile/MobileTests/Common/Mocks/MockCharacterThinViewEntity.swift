//
//  MockCharacterThinViewEntity.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 15/3/23.
//

#if DEBUG

import Foundation

struct MockCharacterThinViewEntity {
    static func givenCharacterThin1() -> CharacterThinViewEntity {
        return CharacterThinViewEntity(id: MockCharacterFatViewEntity.id1, name: MockCharacterFatViewEntity.name1, status: MockCharacterFatViewEntity.status1, gender: MockCharacterFatViewEntity.gender1, imageUrl: MockCharacterFatViewEntity.imageUrl1)
    }
    
    static func givenCharacterThin2() -> CharacterThinViewEntity {
        return CharacterThinViewEntity(id: MockCharacterFatViewEntity.id2, name: MockCharacterFatViewEntity.name2, status: MockCharacterFatViewEntity.status2, gender: MockCharacterFatViewEntity.gender2, imageUrl: MockCharacterFatViewEntity.imageUrl2)
    }
}

#endif
