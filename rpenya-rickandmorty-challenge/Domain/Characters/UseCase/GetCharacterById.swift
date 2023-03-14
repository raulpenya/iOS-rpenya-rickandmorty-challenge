//
//  GetCharacterById.swift
//  Domain
//
//  Created by raulbot on 14/3/23.
//

import Combine

class GetCharacterById: UseCase {
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
    let id: String
    
    init(id: String) {
        self.id = id
    }
}
