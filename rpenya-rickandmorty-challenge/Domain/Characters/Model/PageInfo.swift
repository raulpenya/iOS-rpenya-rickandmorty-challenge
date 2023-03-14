//
//  PageInfo.swift
//  Domain
//
//  Created by raulbot on 14/3/23.
//

import Foundation

public struct PageInfo {
    public let page: Int
    public let totalPages: Int
    
    public init(page: Int, totalPages: Int) {
        self.page = page
        self.totalPages = totalPages
    }
}
