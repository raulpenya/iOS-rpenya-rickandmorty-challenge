//
//  MockCharactersPageRemoteEntity.swift
//  Data
//
//  Created by raulbot on 14/3/23.
//

import Foundation
@testable import Data

struct MockCharactersPageRemoteEntity {
    static func givenCharactersPageRemoteEntity(nilIds: Bool = false) -> CharactersPageRemoteEntity {
        return CharactersPageRemoteEntity(characters: [MockCharacterRemoteEntity.givenCharacterRemoteEntity1(id: nilIds ? nil : MockCharacterRemoteEntity.id1), MockCharacterRemoteEntity.givenCharacterRemoteEntity2()], pageInfo: MockPageInfoRemoteEntity.givenPageInfoRemoteEntity())
    }
}
