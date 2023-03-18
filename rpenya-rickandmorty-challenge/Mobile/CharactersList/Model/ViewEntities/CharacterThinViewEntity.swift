//
//  CharacterThinViewEntity.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 14/3/23.
//

import Foundation
import Domain

struct CharacterThinViewEntity: Equatable {
    let id: String
    let name: String
    let status: Status
    let gender: Gender
    let imageUrl: String
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.id == rhs.id
    }
}

extension CharacterThinViewEntity {
    func transformToListItem(onTapGesture: @escaping ((ListItemSelectable) -> Void)) -> ListItem {
        return CharactersListItem(character: self, onTapGesture: onTapGesture)
    }
    
    func transformToCharacterFatViewEntity() -> CharacterFatViewEntity {
        return CharacterFatViewEntity(id: id, name: name, status: status, species: nil, type: nil, gender: gender, originName: nil, locationName: nil, imageUrl: imageUrl, episodes: [])
    }
}

extension Character {
    func transformToUICharacterThin() -> CharacterThinViewEntity {
        return CharacterThinViewEntity(id: id, name: name, status: status, gender: gender, imageUrl: imageUrl)
    }
}
