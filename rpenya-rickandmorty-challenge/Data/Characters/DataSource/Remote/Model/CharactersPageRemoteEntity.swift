//
//  CharactersPageRemoteEntity.swift
//  Data
//
//  Created by raulbot on 14/3/23.
//

import Foundation
import Domain

struct CharactersPageRemoteEntity: Decodable {
    let characters: [CharacterRemoteEntity]
    let pageInfo: PageInfoRemoteEntity
    
    enum CodingKeys: String, CodingKey {
        case characters = "results"
        case pageInfo = "info"
    }
}

extension CharactersPageRemoteEntity {
    func transformToDomain() -> CharactersPage {
        return CharactersPage(character: characters.compactMap { $0.transformToDomain() }, pageInfo: pageInfo.transformToDomain())
    }
}
