//
//  MockCharactersPagesViewEntity.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 15/3/23.
//

#if DEBUG

import Foundation

struct MockCharactersPagesViewEntity {
    static func givenCharactersPages() -> CharactersPagesViewEntity {
        CharactersPagesViewEntity(characters: [MockCharacterThinViewEntity.givenCharacterThin1(), MockCharacterThinViewEntity.givenCharacterThin2()], currentPage: MockPageInfoViewEntity.givenPageInfo())
    }
}

#endif
