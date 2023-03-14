//
//  PageInfoRemoteEntity.swift
//  Data
//
//  Created by raulbot on 14/3/23.
//

import Foundation
import Domain

struct PageInfoRemoteEntity: Decodable {
    let nextPageUrl: String?
    let totalPages: Int
    
    enum CodingKeys: String, CodingKey {
        case nextPageUrl = "next"
        case totalPages = "pages"
    }
}

extension PageInfoRemoteEntity {
    func transformToDomain() -> PageInfo {
        if let nextPageUrl = nextPageUrl,
           let url = URLComponents(string: nextPageUrl),
           let param = url.queryItems?.first(where: { $0.name == "page" })?.value {
            return PageInfo(nextPage: Int(param), totalPages: totalPages)
        } else {
            return PageInfo(nextPage: nil, totalPages: totalPages)
        }
    }
}
