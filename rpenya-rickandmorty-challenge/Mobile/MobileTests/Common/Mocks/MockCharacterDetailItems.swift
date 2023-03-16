//
//  MockCharacterDetailItems.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 16/3/23.
//

#if DEBUG

import Foundation

struct MockCharacterDetailItems {
    static func givenCharacterDetailItems() -> CharacterDetailItems {
        return CharacterDetailItems(items: [MockCharacterDetailItem.givenCharacterDetailItem1().transformToAnyItem(), MockCharacterDetailItem.givenCharacterDetailItem2().transformToAnyItem()])
    }
}

#endif
