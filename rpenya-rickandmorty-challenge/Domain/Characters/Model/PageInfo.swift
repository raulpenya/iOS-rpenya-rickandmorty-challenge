//
//  PageInfo.swift
//  Domain
//
//  Created by raulbot on 14/3/23.
//

import Foundation

public struct PageInfo {
    public let nextPage: Int?
    public let totalPages: Int
    
    public init(nextPage: Int?, totalPages: Int) {
        self.nextPage = nextPage
        self.totalPages = totalPages
    }
}
