//
//  MockCharactersPageRemoteEntity.swift
//  Data
//
//  Created by raulbot on 14/3/23.
//

import Foundation
@testable import Data

struct MockCharactersPageRemoteEntity {
    static func givenCharactersPageRemoteEntity() -> CharactersPageRemoteEntity {
        return CharactersPageRemoteEntity(characters: [MockCharacterRemoteEntity.givenCharacterRemoteEntity1(), MockCharacterRemoteEntity.givenCharacterRemoteEntity2()], pageInfo: MockPageInfoRemoteEntity.givenPageInfoRemoteEntity())
    }
}
