//
//  CharactersRemoteDataSourceTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 14/3/23.
//

import XCTest
@testable import Data
import Combine
import Domain

final class CharactersRemoteDataSourceTests: XCTestCase {

    let dataSource = CharactersRemoteDataSource()
    var response: DataSourceResponse?
    var errorResponse: Error?
    var cancellableSet: Set<AnyCancellable> = []
    
    func test_getCharactersByPageNumber_success() {
        //Given
        let expectation = expectation(description: "test_getCharactersByPageNumber_success")
        //When
        dataSource.getCharactersByPageNumber(GetCharactersByPageNumberRequestValues(page: 1)).sink { [weak self] completion in
            switch completion {
            case .failure(let error):
                self?.response = .error
                self?.errorResponse = error
            case .finished:
                self?.response = .success
            }
            expectation.fulfill()
        } receiveValue: { _ in }.store(in: &cancellableSet)
        waitForExpectations(timeout: 5, handler: nil)
        //Then
        XCTAssertEqual(response, .success)
        XCTAssertNil(errorResponse)
    }
    
    func test_getCharactersByPageNumber_error() {
        //Given
        let expectation = expectation(description: "test_getCharactersByPageNumber_error")
        //When
        dataSource.getCharactersByPageNumber(GetCharactersByPageNumberRequestValues(page: 800)).sink { [weak self] completion in
            switch completion {
            case .failure(let error):
                self?.response = .error
                self?.errorResponse = error
            case .finished:
                self?.response = .success
            }
            expectation.fulfill()
        } receiveValue: { _ in }.store(in: &cancellableSet)
        waitForExpectations(timeout: 5, handler: nil)
        //Then
        XCTAssertEqual(response, .error)
        XCTAssertNotNil(errorResponse)
    }

    func test_getCharacterById_success() {
        //Given
        let expectation = expectation(description: "test_getCharacterById_success")
        //When
        dataSource.getCharacterById(GetCharacterByIdRequestValues(id: "812")).sink { [weak self] completion in
            switch completion {
            case .failure(let error):
                self?.response = .error
                self?.errorResponse = error
            case .finished:
                self?.response = .success
            }
            expectation.fulfill()
        } receiveValue: { _ in }.store(in: &cancellableSet)
        waitForExpectations(timeout: 5, handler: nil)
        //Then
        XCTAssertEqual(response, .success)
        XCTAssertNil(errorResponse)
    }
    
    func test_getCharacterById_error() {
        //Given
        let expectation = expectation(description: "test_getCharacterById_error")
        //When
        dataSource.getCharacterById(GetCharacterByIdRequestValues(id: "10000")).sink { [weak self] completion in
            switch completion {
            case .failure(let error):
                self?.response = .error
                self?.errorResponse = error
            case .finished:
                self?.response = .success
            }
            expectation.fulfill()
        } receiveValue: { _ in }.store(in: &cancellableSet)
        waitForExpectations(timeout: 5, handler: nil)
        //Then
        XCTAssertEqual(response, .error)
        XCTAssertNotNil(errorResponse)
    }
}
