//
//  CharacterDetailItem.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 16/3/23.
//

import Foundation

enum CharacterDetailCellView {
    case headerImage
    case headerInfo
    case info
}

protocol CharacterDetailItem: ListItem {
    var view: CharacterDetailCellView { get set }
}
