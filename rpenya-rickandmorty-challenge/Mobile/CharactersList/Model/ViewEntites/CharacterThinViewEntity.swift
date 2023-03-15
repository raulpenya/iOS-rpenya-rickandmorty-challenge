//
//  CharacterThinViewEntity.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 14/3/23.
//

import Foundation
import Domain

struct CharacterThinViewEntity {
    let id: String
    let name: String
    let locationName: String?
    let imageUrl: String
}

extension CharacterThinViewEntity {
    func transformToListItem(onTapGesture: @escaping ((ListItemSelectable) -> Void)) -> ListItem {
        return CharactersListItem(character: self, onTapGesture: onTapGesture)
    }
    
    func transformToCharacterFatViewEntity() -> CharacterFatViewEntity {
        return CharacterFatViewEntity(id: id, name: name, status: .none, species: nil, type: nil, gender: .none, originName: nil, locationName: nil, imageUrl: imageUrl)
    }
}

extension Character {
    func transformToUICharacterThin() -> CharacterThinViewEntity {
        return CharacterThinViewEntity(id: id, name: name, locationName: locationName, imageUrl: imageUrl)
    }
}
