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
    let episodes: [String]
}

extension CharacterFatViewEntity {
    func transformToCharacterDetailItems(dismiss: @escaping (() -> Void)) -> ListItems {
        var items = [transformToCharacterDetailImageItem(), transformToCharacterDetailHeaderInfoItem()]
        items.append(contentsOf: transformToCharacterDetailInfoItems())
        return CharacterDetailItems(items: items, dismiss: dismiss)
    }
    
    func transformToCharacterDetailImageItem() -> AnyItem {
        return CharacterDetailImageItem(character: self).transformToAnyItem()
    }
    
    func transformToCharacterDetailHeaderInfoItem() -> AnyItem {
        return CharacterDetailHeaderInfoItem(character: self).transformToAnyItem()
    }
    
    func transformToCharacterDetailInfoItems() -> [AnyItem] {
        var items: [AnyItem] = []
        if let originName = originName.nilIfEmpty() {
            items.append(CharacterDetailInfoItem(title: NSLocalizedString("_origin", comment: ""), info: originName).transformToAnyItem())
        }
        if let locationName = locationName.nilIfEmpty() {
            items.append(CharacterDetailInfoItem(title: NSLocalizedString("_location", comment: ""), info: locationName).transformToAnyItem())
        }
        if let species = species.nilIfEmpty() {
            items.append(CharacterDetailInfoItem(title: NSLocalizedString("_species", comment: ""), info: species).transformToAnyItem())
        }
        if let type = type.nilIfEmpty() {
            items.append(CharacterDetailInfoItem(title: NSLocalizedString("_type", comment: ""), info: type).transformToAnyItem())
        }
        if !episodes.isEmpty {
            items.append(CharacterDetailInfoItem(title: NSLocalizedString("_episodes", comment: ""), info: episodes.joined(separator: ", ")).transformToAnyItem())
        }
        return items
    }
}

extension Character {
    func transformToUIharacterFat() -> CharacterFatViewEntity {
        return CharacterFatViewEntity(id: id, name: name, status: status, species: species, type: type, gender: gender, originName: originName, locationName: locationName, imageUrl: imageUrl, episodes: episodes)
    }
}
