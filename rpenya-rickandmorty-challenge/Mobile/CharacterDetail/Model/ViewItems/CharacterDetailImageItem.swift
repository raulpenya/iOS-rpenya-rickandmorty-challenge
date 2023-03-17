//
//  CharacterDetailImageItem.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 16/3/23.
//

import Foundation

struct CharacterDetailImageItem: CharacterDetailItem {
    var id: String
    let character: CharacterFatViewEntity
    var view: CharacterDetailCellView
    
    init(id: String = UUID().uuidString, character: CharacterFatViewEntity, view: CharacterDetailCellView = .headerImage) {
        self.id = id
        self.character = character
        self.view = view
    }
    
    func getImageUrl() -> URL? {
        return URL(string: character.imageUrl)
    }
}
