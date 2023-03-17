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
    let dismiss: (() -> Void)
    
    init(id: String = UUID().uuidString, character: CharacterFatViewEntity, view: CharacterDetailCellView = .headerImage, dismiss: @escaping () -> Void) {
        self.id = id
        self.character = character
        self.view = view
        self.dismiss = dismiss
    }
    
    func getImageUrl() -> URL? {
        return URL(string: character.imageUrl)
    }
}
