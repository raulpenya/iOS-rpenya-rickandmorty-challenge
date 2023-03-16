//
//  CharacterDetailItem.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 16/3/23.
//

import SwiftUI

enum CharacterDetailCellView {
    case headerImage
    case info
}

struct CharacterDetailItem: ListItem {
    var id: String
    let character: CharacterFatViewEntity
    let view: CharacterDetailCellView
    let dismiss: (() -> Void)
    
    init(id: String = UUID().uuidString, character: CharacterFatViewEntity, view: CharacterDetailCellView, dismiss: @escaping (() -> Void)) {
        self.id = id
        self.character = character
        self.view = view
        self.dismiss = dismiss
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
    
    func getOriginName() -> String? {
        return character.originName.nilIfEmpty()
    }
    
    func getLocationName() -> String? {
        return character.locationName.nilIfEmpty()
    }
    
    func getSpecies() -> String? {
        return character.species.nilIfEmpty()
    }
    
    func getType() -> String? {
        return character.type.nilIfEmpty()
    }
}
