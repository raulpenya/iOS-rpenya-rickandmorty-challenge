//
//  CharacterDetailItems.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 16/3/23.
//

import Foundation

struct CharacterDetailItems: ListItems, ListItemsDismissable {
    var items: [AnyItem]
    var dismiss: (() -> Void)
}
