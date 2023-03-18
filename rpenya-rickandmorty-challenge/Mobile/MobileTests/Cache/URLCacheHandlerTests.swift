//
//  URLCacheHandlerTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 15/3/23.
//

import XCTest
@testable import rpenya_rickandmorty_challenge

final class URLCacheHandlerTests: XCTestCase {
    func test_resetURLCache_called() {
        //Given
        let repository = MockUserDefaultsRepository()
        let urlCacheHandler = MockURLCacheHandler()
        urlCacheHandler.shouldResetCacheResponse = .responseTrue
        //When
        urlCacheHandler.resetURLCacheIfNeeded(newTimestamp: Date().timeIntervalSinceNow, with: repository)
        //Then
        XCTAssertTrue(urlCacheHandler.resetURLCacheCalled)
    }
    
    func test_resetURLCache_notcalled() {
        //Given
        let repository = MockUserDefaultsRepository()
        let urlCacheHandler = MockURLCacheHandler()
        urlCacheHandler.shouldResetCacheResponse = .responseFalse
        //When
        urlCacheHandler.resetURLCacheIfNeeded(newTimestamp: Date().timeIntervalSinceNow, with: repository)
        //Then
        XCTAssertFalse(urlCacheHandler.resetURLCacheCalled)
    }
    
    class MockURLCacheHandler: URLCacheHandler {
        enum ShouldResetCacheResponse {
            case responseTrue
            case responseFalse
        }
        var shouldResetCacheResponse: ShouldResetCacheResponse = .responseTrue
        var resetURLCacheCalled = false
        
        func shouldResetCache(newTimestamp: Double, cacheTimeInSeconds: Double, repositoryKey: String, with repository: KeyValueRepository) -> Bool {
            switch shouldResetCacheResponse {
            case .responseTrue:
                return true
            case .responseFalse:
                return false
            }
        }
        
        func resetURLCache() {
            resetURLCacheCalled = true
        }
    }
}
