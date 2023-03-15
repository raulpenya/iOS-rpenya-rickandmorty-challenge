//
//  GetCharacterById.swift
//  Domain
//
//  Created by raulbot on 14/3/23.
//

import Combine

public class GetCharacterById: UseCase {
    typealias T = Character
    typealias Q = GetCharacterByIdRequestValues
    
    let charactersRepository: CharactersRepository
    
    public init(charactersRepository: CharactersRepository) {
        self.charactersRepository = charactersRepository
    }
    
    func execute(_ requestValues: GetCharacterByIdRequestValues) -> AnyPublisher<Character, Error> {
        return charactersRepository.getCharacterById(requestValues)
    }
}

public class GetCharacterByIdRequestValues: RequestValues {
    public let id: String
    public init(id: String) {
        self.id = id
    }
}
