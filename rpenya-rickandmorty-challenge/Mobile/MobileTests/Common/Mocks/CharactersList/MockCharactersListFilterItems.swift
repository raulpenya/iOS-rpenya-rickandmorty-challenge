//
//  MockCharactersListFilterItems.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 17/3/23.
//

import Foundation
@testable import rpenya_rickandmorty_challenge

struct MockCharactersListFilterItems {
    static func givenCharactersListFilterItems() -> CharactersListFilterItems {
        return CharactersListFilterItems(items: [MockCharactersListFilterItem.givenCharactersListFilterItem1().transformToAnyItem(), MockCharactersListFilterItem.givenCharactersListFilterItem2().transformToAnyItem()])
    }
}
