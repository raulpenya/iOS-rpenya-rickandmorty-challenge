//
//  ImageCacheHandlerTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 15/3/23.
//

import XCTest
@testable import rpenya_rickandmorty_challenge

final class ImageCacheHandlerTests: XCTestCase {
    func test_resetImageCache_called() {
        //Given
        let repository = MockUserDefaultsRepository()
        let imageCacheHandler = MockImageCacheHandler()
        imageCacheHandler.shouldResetCacheResponse = .responseTrue
        //When
        imageCacheHandler.resetImageCacheIfNeeded(newTimestamp: Date().timeIntervalSinceNow, with: repository)
        //Then
        XCTAssertTrue(imageCacheHandler.resetImageCacheCalled)
    }
    
    func test_resetImageCache_notcalled() {
        //Given
        let repository = MockUserDefaultsRepository()
        let imageCacheHandler = MockImageCacheHandler()
        imageCacheHandler.shouldResetCacheResponse = .responseFalse
        //When
        imageCacheHandler.resetImageCacheIfNeeded(newTimestamp: Date().timeIntervalSinceNow, with: repository)
        //Then
        XCTAssertFalse(imageCacheHandler.resetImageCacheCalled)
    }
    
    class MockImageCacheHandler: ImageCacheHandler {
        enum ShouldResetCacheResponse {
            case responseTrue
            case responseFalse
        }
        var shouldResetCacheResponse: ShouldResetCacheResponse = .responseTrue
        var resetImageCacheCalled = false
        
        func shouldResetCache(newTimestamp: Double, cacheTimeInSeconds: Double, repositoryKey: String, with repository: KeyValueRepository) -> Bool {
            switch shouldResetCacheResponse {
            case .responseTrue:
                return true
            case .responseFalse:
                return false
            }
        }
        
        func resetImageCache() {
            resetImageCacheCalled = true
        }
    }
}
