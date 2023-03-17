//
//  MockCharactersListItems.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 16/3/23.
//

import Foundation
@testable import rpenya_rickandmorty_challenge

struct MockCharactersListItems {
    static func givenCharactersListItems() -> CharactersListItems {
        return CharactersListItems(sectionHeader: MockCharactersListFilterItems.givenCharactersListFilterItems(), items: [MockCharactersListItem.givenCharactersListItem1().transformToAnyItem(), MockCharactersListItem.givenCharactersListItem2().transformToAnyItem()], isListCompleted: false) {
            print("MockCharactersListItems")
        }
    }
}
