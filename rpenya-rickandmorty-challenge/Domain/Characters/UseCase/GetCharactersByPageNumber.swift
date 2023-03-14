//
//  GetCharactersByPageNumber.swift
//  Domain
//
//  Created by raulbot on 14/3/23.
//

import Combine

public class GetCharactersByPageNumber: UseCase {
    typealias T = CharactersPage
    typealias Q = GetCharactersByPageNumberRequestValues
    
    let charactersRepository: CharactersRepository
    
    public init(charactersRepository: CharactersRepository) {
        self.charactersRepository = charactersRepository
    }
    
    public func execute(_ requestValues: GetCharactersByPageNumberRequestValues) -> AnyPublisher<CharactersPage, Error> {
        return charactersRepository.getCharactersByPageNumber(requestValues)
    }
}

public class GetCharactersByPageNumberRequestValues: RequestValues {
    public let page: Int
    public init(page: Int) {
        self.page = page
    }
}
