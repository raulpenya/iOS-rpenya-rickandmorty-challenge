//
//  ListItem.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 17/3/23.
//

import Foundation

struct AnyItem: Identifiable {
    let item: ListItem
    var id: String { item.id }
}

protocol ListItem {
    var id: String { get set }
}

extension ListItem {
    func transformToAnyItem() -> AnyItem {
        return  AnyItem(item: self)
    }
}

protocol ListItemSelectable {
    var onTapGesture: ((ListItemSelectable) -> Void) { get set }
}
