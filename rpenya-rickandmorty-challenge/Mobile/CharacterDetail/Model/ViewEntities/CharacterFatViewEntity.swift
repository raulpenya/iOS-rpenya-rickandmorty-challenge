//
//  CharacterFatViewEntity.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 15/3/23.
//

import Foundation
import Domain

struct CharacterFatViewEntity {
    let id: String
    let name: String
    let status: Status
    let species: String?
    let type: String?
    let gender: Gender
    let originName: String?
    let locationName: String?
    let imageUrl: String
}

extension CharacterFatViewEntity {
    func transformToCharacterDetailItems(dismiss: @escaping (() -> Void)) -> CharacterDetailItems {
        return CharacterDetailItems(items: [transformToCharacterDetailItem(view: .headerImage, dismiss: dismiss).transformToAnyItem(), transformToCharacterDetailItem(view: .info, dismiss: dismiss).transformToAnyItem()])
    }
    
    func transformToCharacterDetailItem(view: CharacterDetailCellView, dismiss: @escaping (() -> Void)) -> CharacterDetailItem {
        return CharacterDetailItem(character: self, view: view, dismiss: dismiss)
    }
}

extension Character {
    func transformToUIharacterFat() -> CharacterFatViewEntity {
        return CharacterFatViewEntity(id: id, name: name, status: status, species: species, type: type, gender: gender, originName: originName, locationName: locationName, imageUrl: imageUrl)
    }
}
