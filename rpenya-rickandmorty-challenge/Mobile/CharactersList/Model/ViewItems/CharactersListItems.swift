//
//  CharactersListItems.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 15/3/23.
//

import Foundation

struct CharactersListItems: ListItems, ListItemsPaginated {
    var sectionHeader: ListItems
    var items: [AnyItem]
    var isListCompleted: Bool
    var didReachListBottomAction: (() -> Void)
}
