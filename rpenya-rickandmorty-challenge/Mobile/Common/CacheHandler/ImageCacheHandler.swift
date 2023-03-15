//
//  ImageCache.swift
//  Tiendeo
//
//  Created by Raul Peña on 22/4/21.
//  Copyright © 2021 Tiendeo Web Marketing S.L. All rights reserved.
//

import Foundation
import Kingfisher

protocol ImageCacheHandler {
    func resetImageCacheIfNeeded(newTimestamp: Double, with repository: UserDefaultsRepository)
}

extension ImageCacheHandler {
    func resetImageCacheIfNeeded(newTimestamp: Double, cacheTimeInSeconds: Double = MobileConstants.Cache.cacheTimeInSeconds, with repository: UserDefaultsRepository) {
        guard let savedTimestamp = repository.loadObject(key: MobileConstants.UserDefault.lastCleanCacheTimestamp) as? Double else {
            repository.saveObject(key: MobileConstants.UserDefault.lastCleanCacheTimestamp, value: newTimestamp)
            return
        }
        if newTimestamp - savedTimestamp > cacheTimeInSeconds {
            resetImageCache()
            repository.saveObject(key: MobileConstants.UserDefault.lastCleanCacheTimestamp, value: newTimestamp)
        }
    }
    
    func resetImageCache() {
        let cache = ImageCache.default
        cache.clearMemoryCache()
        cache.clearDiskCache { print("resetImageCache done") }
    }
}
