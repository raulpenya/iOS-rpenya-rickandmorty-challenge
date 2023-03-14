//
//  KeyedDecodingContainer+Extensions.swift
//  Data
//
//  Created by raulbot on 14/3/23.
//

import Foundation

extension KeyedDecodingContainer {
    func decodeIntAsStringIfPresent(forKey key: KeyedDecodingContainer<K>.Key) -> String? {
        if let value = try? decodeIfPresent(Int.self, forKey: key) {
            return String(value)
        }
        return nil
    }
}
