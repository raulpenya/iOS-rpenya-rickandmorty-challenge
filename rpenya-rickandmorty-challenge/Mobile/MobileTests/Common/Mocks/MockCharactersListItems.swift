//
//  MockCharactersListItems.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 16/3/23.
//

#if DEBUG

import Foundation

struct MockCharactersListItems {
    static func givenCharactersListItems() -> CharactersListItems {
        return CharactersListItems(items: [MockCharactersListItem.givenCharactersListItem1().transformToAnyItem(), MockCharactersListItem.givenCharactersListItem2().transformToAnyItem()], isListCompleted: false) {
            print("MockCharactersListItems")
        }
    }
}

#endif
