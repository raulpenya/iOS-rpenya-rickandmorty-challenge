//
//  CacheHandler.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 15/3/23.
//

import Foundation

struct CacheHandler: ImageCacheHandler {
    func cacheCheck() {
        resetImageCacheIfNeeded(newTimestamp: Date().timeIntervalSince1970, with: UserDefaultsRepository())
    }
}
