//
//  MockCharacterDetailItems.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 16/3/23.
//

import Foundation
@testable import rpenya_rickandmorty_challenge

struct MockCharacterDetailItems {
    static func givenCharacterDetailItems() -> CharacterDetailItems {
        return CharacterDetailItems(items: [MockCharacterDetailItem.givenCharacterDetailImageItem().transformToAnyItem(), MockCharacterDetailItem.givenCharacterDetailHeaderInfoItem().transformToAnyItem(),MockCharacterDetailItem.giveCharacterDetailInfoSubItem1().transformToAnyItem(),MockCharacterDetailItem.giveCharacterDetailInfoSubItem2().transformToAnyItem()], dismiss: {})
    }
}
