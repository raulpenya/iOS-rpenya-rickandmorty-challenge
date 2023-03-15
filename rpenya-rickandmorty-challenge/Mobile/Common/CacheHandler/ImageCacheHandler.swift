//
//  ImageCache.swift
//  Tiendeo
//
//  Created by Raul Peña on 22/4/21.
//  Copyright © 2021 Tiendeo Web Marketing S.L. All rights reserved.
//

import Foundation
import Kingfisher

protocol ImageCacheHandler: BaseCacheHandler {
    func resetImageCacheIfNeeded(newTimestamp: Double, cacheTimeInSeconds: Double, repositoryKey: String, with repository: UserDefaultsRepository)
}

extension ImageCacheHandler {
    func resetImageCacheIfNeeded(newTimestamp: Double, cacheTimeInSeconds: Double = MobileConstants.Cache.imageCacheTimeInSeconds, repositoryKey: String = MobileConstants.UserDefault.lastCleanImageCacheTimestamp, with repository: UserDefaultsRepository) {
        if shouldResetCache(newTimestamp: newTimestamp, cacheTimeInSeconds: cacheTimeInSeconds, repositoryKey: repositoryKey, with: repository) {
            resetImageCache()
        }
    }
    
    func resetImageCache() {
        let cache = ImageCache.default
        cache.clearMemoryCache()
        cache.clearDiskCache { print("resetImageCache done") }
    }
}
