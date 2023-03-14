//
//  MockPageInfo.swift
//  Domain
//
//  Created by raulbot on 14/3/23.
//

import Foundation
@testable import Domain

struct MockPageInfo {
    static let page: Int = 1
    static let totalPages: Int = 42
    
    static func givenPageInfo(page: Int = MockPageInfo.page) -> PageInfo {
        return PageInfo(page: page, totalPages: totalPages)
    }
}
