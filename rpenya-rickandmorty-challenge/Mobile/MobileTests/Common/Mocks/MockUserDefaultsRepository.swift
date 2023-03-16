//
//  MockUserDefaultsRepository.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 15/3/23.
//

import Foundation
@testable import rpenya_rickandmorty_challenge

class MockUserDefaultsRepository: KeyValueRepository {
    enum LoadObjectResponse {
        case responseYoungTimestamp
        case responseOldTimestamp
        case responseNil
    }
    
    var loadObjectResponse: LoadObjectResponse = .responseYoungTimestamp
    var saveObjectCalled = false
    var loadObjectCalled = false
    
    func saveObject(key: String, value: Any) {
        saveObjectCalled = true
    }
    
    func loadObject(key: String) -> Any? {
        loadObjectCalled = true
        switch loadObjectResponse {
        case .responseYoungTimestamp:
            return Date().timeIntervalSinceNow
        case .responseOldTimestamp:
            return Date().timeIntervalSinceNow-10000
        case .responseNil:
            return nil
        }
    }
}
