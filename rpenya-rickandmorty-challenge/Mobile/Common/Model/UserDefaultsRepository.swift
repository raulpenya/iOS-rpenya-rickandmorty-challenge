//
//  UserDefaultsRepository.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 15/3/23.
//

import Foundation

protocol KeyValueRepository {
    func saveObject(key: String, value: Any)
    func loadObject(key: String) -> Any?
}

public class UserDefaultsRepository: KeyValueRepository {
    func saveObject(key: String, value: Any) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(value, forKey: key)
    }
    
    func loadObject(key: String) -> Any? {
        let userDefaults = UserDefaults.standard
        let value = userDefaults.object(forKey: key)
        return value
    }
}
