//
//  PageInfoViewEntity.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 15/3/23.
//

import Foundation

public struct PageInfoViewEntity {
    let nextPage: Int
    let totalPages: Int
    
    static func getInitialPageInfo() -> PageInfoViewEntity {
        return PageInfoViewEntity(nextPage: 1, totalPages: 1)
    }
}
