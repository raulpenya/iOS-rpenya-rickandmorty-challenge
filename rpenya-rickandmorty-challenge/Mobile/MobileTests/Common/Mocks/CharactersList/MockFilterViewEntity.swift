//
//  MockFilterViewEntity.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 17/3/23.
//

import Foundation
@testable import rpenya_rickandmorty_challenge

struct MockFilterViewEntity {
    static func givenFilterViewEntity1() -> FilterViewEntity {
        return FilterViewEntity(text: "All", isSelected: true)
    }
    
    static func givenFilterViewEntity2() -> FilterViewEntity {
        return FilterViewEntity(text: "Male", isSelected: false)
    }
}
