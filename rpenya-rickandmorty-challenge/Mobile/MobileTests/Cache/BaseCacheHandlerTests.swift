//
//  BaseCacheHandlerTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 15/3/23.
//

import XCTest
@testable import rpenya_rickandmorty_challenge

final class BaseCacheHandlerTests: XCTestCase {
    
    static let cacheTimeInSeconds = Date().timeIntervalSinceNow+1200
    static let repositoryKey = "key"
    
    func test_shouldResetCache_true() {
        //Given
        let repository = MockUserDefaultsRepository()
        repository.loadObjectResponse = .responseOldTimestamp
        let handler = MockBaseCacheHandler()
        //When
        let result = handler.shouldResetCache(newTimestamp: Date().timeIntervalSinceNow, cacheTimeInSeconds: BaseCacheHandlerTests.cacheTimeInSeconds, repositoryKey: BaseCacheHandlerTests.repositoryKey, with: repository)
        //Then
        XCTAssertTrue(result)
        XCTAssertTrue(repository.loadObjectCalled)
        XCTAssertTrue(repository.saveObjectCalled)
    }
    
    func test_shouldResetCache_false_cacheTimeInSecondsBigger() {
        //Given
        let repository = MockUserDefaultsRepository()
        repository.loadObjectResponse = .responseYoungTimestamp
        let handler = MockBaseCacheHandler()
        //When
        let result = handler.shouldResetCache(newTimestamp: Date().timeIntervalSinceNow, cacheTimeInSeconds: BaseCacheHandlerTests.cacheTimeInSeconds, repositoryKey: BaseCacheHandlerTests.repositoryKey, with: repository)
        //Then
        XCTAssertFalse(result)
        XCTAssertTrue(repository.loadObjectCalled)
        XCTAssertFalse(repository.saveObjectCalled)
    }
    
    func test_shouldResetCache_false_repositoryVoid() {
        //Given
        let repository = MockUserDefaultsRepository()
        repository.loadObjectResponse = .responseNil
        let handler = MockBaseCacheHandler()
        //When
        let result = handler.shouldResetCache(newTimestamp: Date().timeIntervalSinceNow, cacheTimeInSeconds: BaseCacheHandlerTests.cacheTimeInSeconds, repositoryKey: BaseCacheHandlerTests.repositoryKey, with: repository)
        //Then
        XCTAssertFalse(result)
        XCTAssertTrue(repository.loadObjectCalled)
        XCTAssertTrue(repository.saveObjectCalled)
    }
    
    struct MockBaseCacheHandler: BaseCacheHandler { }
}
