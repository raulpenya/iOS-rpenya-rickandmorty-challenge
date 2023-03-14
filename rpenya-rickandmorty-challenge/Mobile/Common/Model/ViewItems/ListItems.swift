//
//  ListItems.swift
//  rpenya-eshop-challenge
//
//  Created by raulbot on 9/3/23.
//

import Foundation

protocol ListItems {
    var items: [AnyItem] { get set }
}

protocol ListItemsPaginated: ListItems {
    var isListFull: Bool { get set }
    var fetchData: (() -> Void) { get set }
}

struct AnyItem: Identifiable {
    var id = UUID()
    let item: ListItem
}

protocol ListItem { }

extension ListItem {
    func transformToAnyItem() -> AnyItem {
        return  AnyItem(item: self)
    }
}
