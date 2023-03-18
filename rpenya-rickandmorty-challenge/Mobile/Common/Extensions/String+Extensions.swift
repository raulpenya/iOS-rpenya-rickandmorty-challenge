//
//  String+Extensions.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 16/3/23.
//

import Foundation

extension String? {
    func nilIfEmpty() -> String? {
        return self?.isEmpty == true ? nil : self
    }
}
