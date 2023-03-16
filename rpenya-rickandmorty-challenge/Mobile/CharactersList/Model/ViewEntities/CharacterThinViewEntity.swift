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
    let status: Status
    let gender: Gender
    let imageUrl: String
}

extension CharacterThinViewEntity {
    func transformToListItem(onTapGesture: @escaping ((ListItemSelectable) -> Void)) -> ListItem {
        return CharactersListItem(character: self, onTapGesture: onTapGesture)
    }
    
    func transformToCharacterFatViewEntity() -> CharacterFatViewEntity {
        return CharacterFatViewEntity(id: id, name: name, status: status, species: nil, type: nil, gender: gender, originName: nil, locationName: nil, imageUrl: imageUrl)
    }
}

extension Character {
    func transformToUICharacterThin() -> CharacterThinViewEntity {
        return CharacterThinViewEntity(id: id, name: name, status: status, gender: gender, imageUrl: imageUrl)
    }
}
