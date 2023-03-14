//
//  MockCharactersRepository.swift
//  Domain
//
//  Created by raulbot on 14/3/23.
//

import Foundation
@testable import Domain
import Combine

enum RepositoryResponse {
    case success
    case error
}

class MockCharactersRepository: CharactersRepository {
    var getCharactersByPageNumberCalled = false
    var getCharacterByIdCalled = false
    var response: RepositoryResponse = .success
    
    func getCharactersByPageNumber(_ requestValues: GetCharactersByPageNumberRequestValues) -> AnyPublisher<CharactersPage, Error> {
        getCharactersByPageNumberCalled = true
        switch response {
        case .success:
            return Result.Publisher(MockCharactersPage.givenCharactersPage()).eraseToAnyPublisher()
        case .error:
            return Fail(error: NSError(domain: "MockCharactersRepository :: getCharactersByPageNumber :: error", code: 0)).eraseToAnyPublisher()
        }
    }
    
    func getCharacterById(_ requestValues: GetCharacterByIdRequestValues) -> AnyPublisher<Character, Error> {
        getCharacterByIdCalled = true
        switch response {
        case .success:
            return Result.Publisher(MockCharacter.givenCharacter1()).eraseToAnyPublisher()
        case .error:
            return Fail(error: NSError(domain: "MockCharactersRepository :: getCharacterById :: error", code: 0)).eraseToAnyPublisher()
        }
    }
}
