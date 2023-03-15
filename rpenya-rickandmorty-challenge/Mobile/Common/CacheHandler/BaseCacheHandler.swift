//
//  BaseCacheHandler.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 15/3/23.
//

import Foundation

protocol BaseCacheHandler {
    func shouldResetCache(newTimestamp: Double, cacheTimeInSeconds: Double, repositoryKey: String, with repository: UserDefaultsRepository) -> Bool
}

extension BaseCacheHandler {
    func shouldResetCache(newTimestamp: Double, cacheTimeInSeconds: Double, repositoryKey: String, with repository: UserDefaultsRepository) -> Bool {
        guard let savedTimestamp = repository.loadObject(key: repositoryKey) as? Double else {
            repository.saveObject(key: repositoryKey, value: newTimestamp)
            return false
        }
        if newTimestamp - savedTimestamp > cacheTimeInSeconds {
            repository.saveObject(key: repositoryKey, value: newTimestamp)
            return true
        } else {
            return false
        }
    }
}
