//
//  MockCharactersPagesViewEntity.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 15/3/23.
//

import Foundation
@testable import rpenya_rickandmorty_challenge

struct MockCharactersPagesViewEntity {
    static func givenCharactersPages() -> CharactersPagesViewEntity {
        CharactersPagesViewEntity(characters: [MockCharacterThinViewEntity.givenCharacterThin1(), MockCharacterThinViewEntity.givenCharacterThin2()], currentPage: MockPageInfoViewEntity.givenPageInfo())
    }
}
