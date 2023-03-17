//
//  MockFiltersViewEntity.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 17/3/23.
//

import Foundation
@testable import rpenya_rickandmorty_challenge

struct MockFiltersViewEntity {
    static func givenFiltersViewEntity() -> FiltersViewEntity {
        return FiltersViewEntity(filters: [MockFilterViewEntity.givenFilterViewEntity1(), MockFilterViewEntity.givenFilterViewEntity1()])
    }
}
