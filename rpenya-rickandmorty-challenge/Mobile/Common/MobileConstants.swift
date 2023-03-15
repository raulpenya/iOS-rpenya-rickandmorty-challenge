//
//  MobileConstants.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 15/3/23.
//

import Foundation

struct MobileConstants {
    struct UserDefault {
        static let lastCleanImageCacheTimestamp = "lastCleanImageCacheTimestamp"
        static let lastCleanURLCacheTimestamp = "lastCleanURLCacheTimestamp"
    }
    struct Cache {
        static let imageCacheTimeInSeconds: Double = 120
        static let urlCacheTimeInSeconds: Double = 120
        static let memoryCapacity = 10 * 1024 * 1024 //10MB
        static let diskCapacity = 50 * 1024 * 1024 //50MB
    }
}
