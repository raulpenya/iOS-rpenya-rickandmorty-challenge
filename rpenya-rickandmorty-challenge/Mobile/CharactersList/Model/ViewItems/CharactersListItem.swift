//
//  CharactersListItem.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 15/3/23.
//

import Foundation

struct CharactersListItem: ListItem {
    var id: String
    let character: CharacterThinViewEntity
    
    init(character: CharacterThinViewEntity) {
        self.id = character.id
        self.character = character
    }
    
    func getName() -> String {
        return character.name
    }
    
    func getImageUrl() -> String {
        return character.imageUrl
    }
}
