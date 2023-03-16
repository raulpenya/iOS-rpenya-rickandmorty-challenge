//
//  CharactersListItem.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 15/3/23.
//

import SwiftUI

struct CharactersListItem: ListItem, ListItemSelectable {
    var id: String
    let character: CharacterThinViewEntity
    var onTapGesture: ((ListItemSelectable) -> Void)
    
    init(character: CharacterThinViewEntity, onTapGesture: @escaping ((ListItemSelectable) -> Void)) {
        self.id = character.id
        self.character = character
        self.onTapGesture = onTapGesture
    }
    
    func getName() -> String {
        return character.name
    }
    
    func getImageUrl() -> String {
        return character.imageUrl
    }
    
    func getStatusString() -> String {
        return character.status.rawValue
    }
    
    func getStatusColor() -> Color {
        return character.status.getColor()
    }
    
    func getGenderString() -> String {
        return character.gender.rawValue
    }
}
