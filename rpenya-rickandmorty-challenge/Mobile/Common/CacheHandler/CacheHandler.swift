//
//  CacheHandler.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 15/3/23.
//

import Foundation

struct CacheHandler: ImageCacheHandler, URLCacheHandler {
    func setURLCacheLimits() {
        increaseCacheSize(memoryCapacity: MobileConstants.Cache.memoryCapacity, diskCapacity: MobileConstants.Cache.diskCapacity)
    }
    
    func checkCache() {
        let currentDate = Date().timeIntervalSince1970
        let repository = UserDefaultsRepository()
        resetImageCacheIfNeeded(newTimestamp: currentDate, with: repository)
        resetURLCacheIfNeeded(newTimestamp: currentDate, with: repository)
    }
}
