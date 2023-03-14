//
//  MockLocationRemoteEntity.swift
//  Data
//
//  Created by raulbot on 14/3/23.
//

import Foundation
@testable import Data

struct MockLocationRemoteEntity {
    static let name = "Earth (C-137)"
    static func givenLocationRemoteEntity() -> LocationRemoteEntity {
        LocationRemoteEntity(name: name)
    }
}
