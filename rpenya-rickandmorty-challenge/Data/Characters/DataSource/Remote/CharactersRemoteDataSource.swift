//
//  CharactersRemoteDataSource.swift
//  Data
//
//  Created by raulbot on 14/3/23.
//

import Foundation
import Domain
import Combine

public class CharactersRemoteDataSource: CharactersDataSource, NetworkingDataSource {
    
    public init() {}
    
    public func getCharactersByPageNumber(_ requestValues: GetCharactersByPageNumberRequestValues) -> AnyPublisher<CharactersPage, Error> {
        return request(resource: CharactersResources.getCharactersByPageNumberResource(requestValues))
    }
    
    public func getCharacterById(_ requestValues: GetCharacterByIdRequestValues) -> AnyPublisher<Character, Error> {
        return request(resource: CharactersResources.getCharacterByIdResource(requestValues)).flatMap { character in
            guard let character = character else {
                return Fail<Character, Error>(error: DataSourceErrors.parametersException).eraseToAnyPublisher()
            }
            return Result<Character, Error>.Publisher(character).eraseToAnyPublisher()
        }.eraseToAnyPublisher()
    }
}
