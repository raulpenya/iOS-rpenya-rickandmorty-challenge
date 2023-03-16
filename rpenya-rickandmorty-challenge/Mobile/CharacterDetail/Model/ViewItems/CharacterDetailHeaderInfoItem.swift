//
//  CharacterDetailInfoItem.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 16/3/23.
//

import SwiftUI

struct CharacterDetailHeaderInfoItem: CharacterDetailItem {
    var id: String
    let character: CharacterFatViewEntity
    var view: CharacterDetailCellView = .headerInfo
    
    init(id: String = UUID().uuidString, character: CharacterFatViewEntity, view: CharacterDetailCellView = .headerInfo) {
        self.id = id
        self.character = character
        self.view = view
    }
    
    func getName() -> String {
        return character.name
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
