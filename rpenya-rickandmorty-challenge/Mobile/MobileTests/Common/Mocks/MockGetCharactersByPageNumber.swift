//
//  MockGetCharactersByPageNumber.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 15/3/23.
//

import Foundation
@testable import Domain
@testable import rpenya_rickandmorty_challenge
import Combine

class MockGetCharactersByPageNumber: GetCharactersByPageNumber {
    var called: Bool = false
    var response: RepositoryResponse = .success
    
    static func getUseCase() -> MockGetCharactersByPageNumber {
        return MockGetCharactersByPageNumber(charactersRepository: MockCharactersRepository())
    }
    
    override func execute(_ requestValues: GetCharactersByPageNumberRequestValues) -> AnyPublisher<CharactersPage, Error> {
        called = true
        switch response {
        case .success:
            return Result.Publisher(MockCharactersPage.givenCharactersPage()).eraseToAnyPublisher()
        case .error:
            return Fail(error: NSError(domain: "MockGetCharactersByPageNumber :: error", code: 0)).eraseToAnyPublisher()
        }
    }
}
