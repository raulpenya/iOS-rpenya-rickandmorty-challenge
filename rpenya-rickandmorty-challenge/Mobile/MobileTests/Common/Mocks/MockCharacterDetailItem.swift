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
        return CharacterDetailImageItem(character: MockCharacterFatViewEntity.givenCharacterFat1()) {
            print("MockCharacterDetailItem")
        }
    }
    
    static func givenCharacterDetailItem2() -> CharacterDetailItem {
        return CharacterDetailHeaderInfoItem(character: MockCharacterFatViewEntity.givenCharacterFat1())
    }
    
    static func giveCharacterDetailInfoSubItem1() -> CharacterDetailInfoItem {
        return CharacterDetailInfoItem(title: "_location", info: MockCharacterFatViewEntity.locationName1)
    }
    
    static func giveCharacterDetailInfoSubItem2() -> CharacterDetailInfoItem {
        return CharacterDetailInfoItem(title: "_origin", info: MockCharacterFatViewEntity.originName1)
    }
}

#endif
