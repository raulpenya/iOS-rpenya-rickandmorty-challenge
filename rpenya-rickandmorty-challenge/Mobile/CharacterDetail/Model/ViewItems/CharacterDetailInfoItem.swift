//
//  CharacterDetailInfoItem.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 16/3/23.
//

import Foundation

struct CharacterDetailInfoItem: CharacterDetailItem {
    var id: String
    var view: CharacterDetailCellView
    let title: String
    let info: String
    
    init(title: String, info: String, view: CharacterDetailCellView = .info) {
        self.id = title
        self.view = view
        self.title = title
        self.info = info
    }
}
