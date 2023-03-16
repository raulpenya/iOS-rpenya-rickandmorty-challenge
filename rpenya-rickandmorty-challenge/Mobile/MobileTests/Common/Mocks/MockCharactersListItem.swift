//
//  MockCharactersListItem.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 15/3/23.
//

import Foundation
@testable import rpenya_rickandmorty_challenge

struct MockCharactersListItem {
    static func givenCharactersListItem1() -> CharactersListItem {
        return CharactersListItem(character: MockCharacterThinViewEntity.givenCharacterThin1()) { item in
            print(item)
        }
    }
    
    static func givenCharactersListItem2() -> CharactersListItem {
        return CharactersListItem(character: MockCharacterThinViewEntity.givenCharacterThin2()) { item in
            print(item)
        }
    }
}
