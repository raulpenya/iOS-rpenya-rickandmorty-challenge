//
//  CharactersPagesViewEntity.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 15/3/23.
//

import Foundation

struct CharactersPagesViewEntity {
    var characters: [CharacterThinViewEntity] = []
    var currentPage: PageInfoViewEntity = PageInfoViewEntity.getInitialPageInfo()
}
