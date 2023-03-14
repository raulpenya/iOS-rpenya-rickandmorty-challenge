//
//  MockPageInfoRemoteEntity.swift
//  Data
//
//  Created by raulbot on 14/3/23.
//

import Foundation
@testable import Data

struct MockPageInfoRemoteEntity {
    static let nextPageUrl = "https://rickandmortyapi.com/api/character/?page=2"
    static let nextPageUrlWrongParam = "https://rickandmortyapi.com/api/character/?page=fdsafdas"
    static let nextPageUrlNoParam = "https://rickandmortyapi.com/api/character/"
    static let totalPages = 42
    static func givenPageInfoRemoteEntity(nextPageUrl: String? = nextPageUrl) -> PageInfoRemoteEntity {
        return PageInfoRemoteEntity(nextPageUrl: nextPageUrl, totalPages: totalPages)
    }
}
