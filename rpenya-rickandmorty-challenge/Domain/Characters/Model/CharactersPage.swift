//
//  Characters.swift
//  Domain
//
//  Created by raulbot on 14/3/23.
//

import Foundation

public struct CharactersPage {
    public let character: [Character]
    public let pageInfo: PageInfo
    
    public init(character: [Character], pageInfo: PageInfo) {
        self.character = character
        self.pageInfo = pageInfo
    }
}
