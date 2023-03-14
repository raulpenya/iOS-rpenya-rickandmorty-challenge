//
//  PageInfoRemoteEntity.swift
//  Data
//
//  Created by raulbot on 14/3/23.
//

import Foundation
import Domain

struct PageInfoRemoteEntity: Decodable, Equatable {
    let page: Int
    let totalPages: Int
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.page == rhs.page
    }
}

extension PageInfoRemoteEntity {
    func transformToDomain() -> PageInfo {
        return PageInfo(page: page, totalPages: totalPages)
    }
}
