//
//  PageInfoRemoteEntity.swift
//  Data
//
//  Created by raulbot on 14/3/23.
//

import Foundation
import Domain

struct PageInfoRemoteEntity: Decodable {
//    let page: Int
    let totalPages: Int
    
    enum CodingKeys: String, CodingKey {
        case totalPages = "pages"
    }
}

extension PageInfoRemoteEntity {
    func transformToDomain() -> PageInfo {
        return PageInfo(page: 1, totalPages: totalPages)
    }
}
