//
//  MockCharacterDetailItem.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 16/3/23.
//

import Foundation
@testable import rpenya_rickandmorty_challenge

struct MockCharacterDetailItem {
    static func givenCharacterDetailImageItem() -> CharacterDetailImageItem {
        return CharacterDetailImageItem(character: MockCharacterFatViewEntity.givenCharacterFat1())
    }
    
    static func givenCharacterDetailHeaderInfoItem() -> CharacterDetailHeaderInfoItem {
        return CharacterDetailHeaderInfoItem(character: MockCharacterFatViewEntity.givenCharacterFat1())
    }
    
    static func giveCharacterDetailInfoSubItem1() -> CharacterDetailInfoItem {
        return CharacterDetailInfoItem(title: "_location", info: MockCharacterFatViewEntity.locationName1)
    }
    
    static func giveCharacterDetailInfoSubItem2() -> CharacterDetailInfoItem {
        return CharacterDetailInfoItem(title: "_origin", info: MockCharacterFatViewEntity.originName1)
    }
}
