//
//  MockPageInfoViewEntity.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 15/3/23.
//

#if DEBUG

import Foundation

struct MockPageInfoViewEntity {
    static func givenPageInfo(nextPage: Int? = 1) -> PageInfoViewEntity {
        return PageInfoViewEntity(nextPage: nextPage, totalPages: 42)
    }
}

#endif
