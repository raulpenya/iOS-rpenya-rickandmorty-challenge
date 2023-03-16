//
//  MockCharacterDetailItem.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 16/3/23.
//

#if DEBUG

import Foundation

struct MockCharacterDetailItem {
    static func givenCharacterDetailItem1() -> CharacterDetailItem {
        return CharacterDetailItem(character: MockCharacterFatViewEntity.givenCharacterFat1(), view: .headerImage)
    }
    
    static func givenCharacterDetailItem2() -> CharacterDetailItem {
        return CharacterDetailItem(character: MockCharacterFatViewEntity.givenCharacterFat1(), view: .info)
    }
}

#endif
