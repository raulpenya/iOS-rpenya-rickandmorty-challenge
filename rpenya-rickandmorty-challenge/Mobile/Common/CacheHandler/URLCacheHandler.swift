//
//  URLCacheHandler.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 15/3/23.
//

import Foundation

protocol URLCacheHandler: BaseCacheHandler {
    func resetURLCacheIfNeeded(newTimestamp: Double, cacheTimeInSeconds: Double, repositoryKey: String, with repository: KeyValueRepository)
    func resetURLCache()
    func increaseCacheSize(memoryCapacity: Int, diskCapacity: Int)
}

extension URLCacheHandler {
    func resetURLCacheIfNeeded(newTimestamp: Double, cacheTimeInSeconds: Double = MobileConstants.Cache.urlCacheTimeInSeconds, repositoryKey: String = MobileConstants.UserDefault.lastCleanURLCacheTimestamp, with repository: KeyValueRepository) {
        if shouldResetCache(newTimestamp: newTimestamp, cacheTimeInSeconds: cacheTimeInSeconds, repositoryKey: repositoryKey, with: repository) {
            resetURLCache()
        }
    }
    
    func resetURLCache() {
        URLCache.shared.removeAllCachedResponses()
    }
    
    func increaseCacheSize(memoryCapacity: Int, diskCapacity: Int) {
        URLCache.shared = {
            URLCache(memoryCapacity: memoryCapacity, diskCapacity: diskCapacity, diskPath: nil)
        }()
    }
}
