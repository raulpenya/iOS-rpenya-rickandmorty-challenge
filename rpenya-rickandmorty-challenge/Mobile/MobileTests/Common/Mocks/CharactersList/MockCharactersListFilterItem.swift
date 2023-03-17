//
//  MockCharactersListFilterItem.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 17/3/23.
//

import Foundation
@testable import rpenya_rickandmorty_challenge

struct MockCharactersListFilterItem {
    static func givenCharactersListFilterItem1() -> CharactersListFilterItem {
        return CharactersListFilterItem(filter: MockFilterViewEntity.givenFilterViewEntity1(), onTapGesture: { _ in })
    }
    
    static func givenCharactersListFilterItem2() -> CharactersListFilterItem {
        return CharactersListFilterItem(filter: MockFilterViewEntity.givenFilterViewEntity2(), onTapGesture: { _ in })
    }
}
