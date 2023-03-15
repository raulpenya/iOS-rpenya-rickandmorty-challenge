//
//  PageInfoViewEntity.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 15/3/23.
//

import Foundation
import Domain

public struct PageInfoViewEntity {
    let nextPage: Int?
    let totalPages: Int
    
    static func getInitialPageInfo() -> PageInfoViewEntity {
        return PageInfoViewEntity(nextPage: 1, totalPages: 1)
    }
}

extension PageInfoViewEntity {
    func isLastPage() -> Bool {
        return nextPage == nil
    }
}

extension PageInfo {
    func transformToUI() -> PageInfoViewEntity {
        return PageInfoViewEntity(nextPage: nextPage, totalPages: totalPages)
    }
}
