//
//  CharactersResources.swift
//  Data
//
//  Created by raulbot on 14/3/23.
//

import Foundation
import Domain

struct CharactersResources {
    static func getCharactersByPageNumberResource(_ requestValues: GetCharactersByPageNumberRequestValues) -> Resource<CharactersPageRemoteEntity, CharactersPage>?
    {
        guard let urlRequest = try? CharactersApi.getCharactersByPageNumber(requestValues).asURLRequest() else { return nil }
        return Resource<CharactersPageRemoteEntity, CharactersPage>(request: urlRequest) { charactersPage in
            return charactersPage.transformToDomain()
        }
    }
    
    static func getCharacterByIdResource(_ requestValues: GetCharacterByIdRequestValues) -> Resource<CharacterRemoteEntity, Character>?
    {
        guard let urlRequest = try? CharactersApi.getCharacterById(requestValues).asURLRequest() else { return nil }
        return Resource<CharacterRemoteEntity, Character>(request: urlRequest) { character in
            return character.transformToDomain()
        }
    }
}
