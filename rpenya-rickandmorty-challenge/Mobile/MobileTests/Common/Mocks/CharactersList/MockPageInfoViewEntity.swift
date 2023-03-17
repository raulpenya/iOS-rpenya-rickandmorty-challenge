//
//  MockPageInfoViewEntity.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 15/3/23.
//

import Foundation
@testable import rpenya_rickandmorty_challenge

struct MockPageInfoViewEntity {
    static func givenPageInfo(nextPage: Int? = 1) -> PageInfoViewEntity {
        return PageInfoViewEntity(nextPage: nextPage, totalPages: 42)
    }
}
