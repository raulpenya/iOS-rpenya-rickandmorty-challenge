//
//  GetCharactersByPageNumberTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 14/3/23.
//

import XCTest
@testable import Domain
import Combine

final class GetCharactersByPageNumberTests: XCTestCase {

    let charactersRepository = MockCharactersRepository()
    let requestValues = GetCharactersByPageNumberRequestValues(page: 1)
    var cancellableSet: Set<AnyCancellable> = []
    var response: RepositoryResponse?
    var charactersPage: CharactersPage?
    
    override func setUpWithError() throws {
        response = nil
        charactersPage = nil
    }

    func test_GetCharactersByPageNumber_success() {
        //Given
        charactersRepository.response = .success
        let usecase = GetCharactersByPageNumber(charactersRepository: charactersRepository)
        let expectation = expectation(description: "test_GetCharactersByPageNumber_success")
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
        } receiveValue: { [weak self] charactersPage in
            self?.charactersPage = charactersPage
        }.store(in: &cancellableSet)
        waitForExpectations(timeout: 5, handler: nil)
        //Then
        XCTAssertEqual(response, .success)
        XCTAssertNotNil(charactersPage)
        XCTAssertTrue(charactersRepository.getCharactersByPageNumberCalled)
    }
    
    func test_GetCharactersByPageNumber_error() {
        //Given
        charactersRepository.response = .error
        let usecase = GetCharactersByPageNumber(charactersRepository: charactersRepository)
        let expectation = expectation(description: "test_GetCharactersByPageNumber_error")
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
        } receiveValue: { [weak self] charactersPage in
            self?.charactersPage = charactersPage
        }.store(in: &cancellableSet)
        waitForExpectations(timeout: 5, handler: nil)
        //Then
        XCTAssertEqual(response, .error)
        XCTAssertNil(charactersPage)
        XCTAssertTrue(charactersRepository.getCharactersByPageNumberCalled)
    }
}
