//
//  MockOriginRemoteEntity.swift
//  Data
//
//  Created by raulbot on 14/3/23.
//

import Foundation
@testable import Data

struct MockOriginRemoteEntity {
    static let name = "Citadel of Ricks"
    static func givenOriginRemoteEntity() -> OriginRemoteEntity {
        return OriginRemoteEntity(name: name)
    }
}
