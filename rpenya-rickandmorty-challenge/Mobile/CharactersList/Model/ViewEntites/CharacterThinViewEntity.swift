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
   let imageUrl: String
}

extension CharacterThinViewEntity {
    func transformToListItem() -> ListItem {
        return CharactersListItem(character: self)
    }
}

extension Character {
    func transformToUICharacterThin() -> CharacterThinViewEntity {
        return CharacterThinViewEntity(id: id, name: name, status: status, imageUrl: imageUrl)
    }
}
