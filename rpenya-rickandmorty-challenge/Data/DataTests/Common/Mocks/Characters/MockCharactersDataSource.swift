//
//  MockCharactersDataSource.swift
//  Data
//
//  Created by raulbot on 14/3/23.
//

import Foundation
@testable import Data
import Domain
import Combine

class MockCharactersDataSource: CharactersDataSource {
    var getCharactersByPageNumberCalled = false
    var getCharacterByIdCalled = false
    var response: DataSourceResponse = .success
    
    func getCharactersByPageNumber(_ requestValues: Domain.GetCharactersByPageNumberRequestValues) -> AnyPublisher<Domain.CharactersPage, Error> {
        getCharactersByPageNumberCalled = true
        switch response {
        case .success:
            return Result.Publisher(MockCharactersPage.givenCharactersPage()).eraseToAnyPublisher()
        case .error:
            return Fail(error: DataSourceErrors.networkingRequestError).eraseToAnyPublisher()
        }
    }
    
    func getCharacterById(_ requestValues: Domain.GetCharacterByIdRequestValues) -> AnyPublisher<Domain.Character, Error> {
        getCharacterByIdCalled = true
        switch response {
        case .success:
            return Result.Publisher(MockCharacter.givenCharacter1()).eraseToAnyPublisher()
        case .error:
            return Fail(error: DataSourceErrors.networkingRequestError).eraseToAnyPublisher()
        }
    }
}
