//
//  CharactersListFilterItem.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 17/3/23.
//

import Foundation

struct CharactersListFilterItem: ListItem, ListItemSelectable {
    var id: String
    let filter: FilterViewEntity
    var onTapGesture: ((ListItemSelectable) -> Void)
    
    init(filter: FilterViewEntity, onTapGesture: @escaping (ListItemSelectable) -> Void) {
        self.id = filter.text
        self.filter = filter
        self.onTapGesture = onTapGesture
    }
}
