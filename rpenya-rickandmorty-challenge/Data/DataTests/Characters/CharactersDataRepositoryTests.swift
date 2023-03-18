//
//  CharactersDataRepositoryTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 14/3/23.
//

import XCTest
@testable import Data
import Domain

final class CharactersDataRepositoryTests: XCTestCase {
    
    let dataSource = MockCharactersDataSource()
    var response: DataSourceResponse?
    var errorResponse: Error?
    var charactersPage: CharactersPage?
    var character: Character?
    let getCharactersByPageNumberRequestValues = GetCharactersByPageNumberRequestValues(page: 1, filter: "male")
    let getCharacterByIdRequestValues = GetCharacterByIdRequestValues(id: "812")
    
    override func setUpWithError() throws {
        response = nil
        errorResponse = nil
        charactersPage = nil
        character = nil
        dataSource.getCharactersByPageNumberCalled = false
        dataSource.getCharacterByIdCalled = false
    }
    
    func test_getCharactersByPageNumber_success() {
        //Given
        dataSource.response = .success
        let dataRepository = CharactersDataRepository(dataSource: dataSource)
        let expectation = expectation(description: "test_getCharactersByPageNumber_success")
        //When
        dataRepository.getCharactersByPageNumber(getCharactersByPageNumberRequestValues).sink { [weak self] completion in
            switch completion {
            case .failure(let error):
                self?.response = .error
                self?.errorResponse = error
            case .finished:
                self?.response = .success
            }
            expectation.fulfill()
        } receiveValue: { [weak self] charactersPage in
            self?.charactersPage = charactersPage
        }.cancel()
        waitForExpectations(timeout: 5, handler: nil)
        //Then
        XCTAssertEqual(response, .success)
        XCTAssertNil(errorResponse)
        XCTAssertTrue(dataSource.getCharactersByPageNumberCalled)
        XCTAssertFalse(dataSource.getCharacterByIdCalled)
        XCTAssertNotNil(charactersPage)
        XCTAssertFalse(charactersPage!.characters.isEmpty)
    }
    
    func test_getCharactersByPageNumber_error() {
        //Given
        dataSource.response = .error
        let dataRepository = CharactersDataRepository(dataSource: dataSource)
        let expectation = expectation(description: "test_getCharactersByPageNumber_error")
        //When
        dataRepository.getCharactersByPageNumber(getCharactersByPageNumberRequestValues).sink { [weak self] completion in
            switch completion {
            case .failure(let error):
                self?.response = .error
                self?.errorResponse = error
            case .finished:
                self?.response = .success
            }
            expectation.fulfill()
        } receiveValue: { [weak self] charactersPage in
            self?.charactersPage = charactersPage
        }.cancel()
        waitForExpectations(timeout: 5, handler: nil)
        //Then
        XCTAssertEqual(response, .error)
        XCTAssertNotNil(errorResponse)
        XCTAssertTrue(dataSource.getCharactersByPageNumberCalled)
        XCTAssertFalse(dataSource.getCharacterByIdCalled)
        XCTAssertNil(charactersPage)
    }
    
    func test_getCharacterById_success() {
        //Given
        dataSource.response = .success
        let dataRepository = CharactersDataRepository(dataSource: dataSource)
        let expectation = expectation(description: "test_getCharacterById_success")
        //When
        dataRepository.getCharacterById(getCharacterByIdRequestValues).sink { [weak self] completion in
            switch completion {
            case .failure(let error):
                self?.response = .error
                self?.errorResponse = error
            case .finished:
                self?.response = .success
            }
            expectation.fulfill()
        } receiveValue: { [weak self] character in
            self?.character = character
        }.cancel()
        waitForExpectations(timeout: 5, handler: nil)
        //Then
        XCTAssertEqual(response, .success)
        XCTAssertNil(errorResponse)
        XCTAssertFalse(dataSource.getCharactersByPageNumberCalled)
        XCTAssertTrue(dataSource.getCharacterByIdCalled)
        XCTAssertNotNil(character)
    }
    
    func test_getCharacterById_error() {
        //Given
        dataSource.response = .error
        let dataRepository = CharactersDataRepository(dataSource: dataSource)
        let expectation = expectation(description: "test_getCharacterById_error")
        //When
        dataRepository.getCharacterById(getCharacterByIdRequestValues).sink { [weak self] completion in
            switch completion {
            case .failure(let error):
                self?.response = .error
                self?.errorResponse = error
            case .finished:
                self?.response = .success
            }
            expectation.fulfill()
        } receiveValue: { [weak self] character in
            self?.character = character
        }.cancel()
        waitForExpectations(timeout: 5, handler: nil)
        //Then
        XCTAssertEqual(response, .error)
        XCTAssertNotNil(errorResponse)
        XCTAssertFalse(dataSource.getCharactersByPageNumberCalled)
        XCTAssertTrue(dataSource.getCharacterByIdCalled)
        XCTAssertNil(character)
    }
}
