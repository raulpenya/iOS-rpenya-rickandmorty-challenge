//
//  Characters.swift
//  Domain
//
//  Created by raulbot on 14/3/23.
//

import Foundation

public struct CharactersPage {
    public let characters: [Character]
    public let pageInfo: PageInfo
    
    public init(character: [Character], pageInfo: PageInfo) {
        self.characters = character
        self.pageInfo = pageInfo
    }
}
