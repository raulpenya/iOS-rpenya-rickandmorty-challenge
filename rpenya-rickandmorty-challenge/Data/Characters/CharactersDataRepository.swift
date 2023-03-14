//
//  CharactersDataRepository.swift
//  Data
//
//  Created by raulbot on 14/3/23.
//

import Foundation
import Domain
import Combine

public struct CharactersDataRepository: CharactersRepository {
    let dataSource: CharactersDataSource
    
    public init(dataSource: CharactersDataSource) {
        self.dataSource = dataSource
    }
    
    public func getCharactersByPageNumber(_ requestValues: Domain.GetCharactersByPageNumberRequestValues) -> AnyPublisher<Domain.CharactersPage, Error> {
        return dataSource.getCharactersByPageNumber(requestValues)
    }
    
    public func getCharacterById(_ requestValues: Domain.GetCharacterByIdRequestValues) -> AnyPublisher<Domain.Character, Error> {
        return dataSource.getCharacterById(requestValues)
    }
}

