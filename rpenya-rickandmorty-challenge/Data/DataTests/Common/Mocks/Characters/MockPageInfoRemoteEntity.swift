//
//  MockPageInfoRemoteEntity.swift
//  Data
//
//  Created by raulbot on 14/3/23.
//

import Foundation
@testable import Data

struct MockPageInfoRemoteEntity {
    static let totalPages = 42
    static func givenPageInfoRemoteEntity() -> PageInfoRemoteEntity {
        return PageInfoRemoteEntity(totalPages: totalPages)
    }
}
