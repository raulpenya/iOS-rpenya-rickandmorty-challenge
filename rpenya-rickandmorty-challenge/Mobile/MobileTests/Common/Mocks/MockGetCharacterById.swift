//
//  MockGetCharacterById.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 15/3/23.
//

import Foundation
@testable import Domain
@testable import rpenya_rickandmorty_challenge
import Combine

class MockGetCharacterById: GetCharacterById {
    var called: Bool = false
    var response: RepositoryResponse = .success
    
    static func getUseCase() -> MockGetCharacterById {
        return MockGetCharacterById(charactersRepository: MockCharactersRepository())
    }
    
    override func execute(_ requestValues: GetCharacterByIdRequestValues) -> AnyPublisher<Character, Error> {
        called = true
        switch response {
        case .success:
            return Result.Publisher(MockCharacter.givenCharacter1()).eraseToAnyPublisher()
        case .error:
            return Fail(error: NSError(domain: "MockGetCharactersByPageNumber :: error", code: 0)).eraseToAnyPublisher()
        }
    }
}
