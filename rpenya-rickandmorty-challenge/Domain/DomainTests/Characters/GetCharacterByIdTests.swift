//
//  GetCharacterByIdTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 14/3/23.
//

import XCTest
@testable import Domain
import Combine

final class GetCharacterByIdTests: XCTestCase {

    let charactersRepository = MockCharactersRepository()
    let requestValues = GetCharacterByIdRequestValues(id: "821")
    var cancellableSet: Set<AnyCancellable> = []
    var response: RepositoryResponse?
    var character: Character?
    
    override func setUpWithError() throws {
        response = nil
        character = nil
    }

    func test_GetCharacterById_success() {
        //Given
        charactersRepository.response = .success
        let usecase = GetCharacterById(charactersRepository: charactersRepository)
        let expectation = expectation(description: "test_GetCharacterById_success")
        //When
        usecase.execute(requestValues).sink { [weak self] completion in
            print(completion)
            switch completion {
            case .failure:
                self?.response = .error
            case .finished:
                self?.response = .success
            }
            expectation.fulfill()
        } receiveValue: { [weak self] character in
            self?.character = character
        }.store(in: &cancellableSet)
        waitForExpectations(timeout: 5, handler: nil)
        //Then
        XCTAssertEqual(response, .success)
        XCTAssertNotNil(character)
        XCTAssertTrue(charactersRepository.getCharacterByIdCalled)
    }
    
    func test_GetCharacterById_error() {
        //Given
        charactersRepository.response = .error
        let usecase = GetCharacterById(charactersRepository: charactersRepository)
        let expectation = expectation(description: "test_GetCharacterById_error")
        //When
        usecase.execute(requestValues).sink { [weak self] completion in
            print(completion)
            switch completion {
            case .failure:
                self?.response = .error
            case .finished:
                self?.response = .success
            }
            expectation.fulfill()
        } receiveValue: { [weak self] character in
            self?.character = character
        }.store(in: &cancellableSet)
        waitForExpectations(timeout: 5, handler: nil)
        //Then
        XCTAssertEqual(response, .error)
        XCTAssertNil(character)
        XCTAssertTrue(charactersRepository.getCharacterByIdCalled)
    }
}
