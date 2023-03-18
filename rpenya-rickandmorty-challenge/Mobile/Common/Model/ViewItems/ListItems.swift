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

protocol ListItemsSectionHeader {
    var sectionHeader: ListItems { get set }
}

protocol ListItemsPaginated {
    var isListCompleted: Bool { get set }
    var didReachListBottomAction: (() -> Void) { get set }
}

protocol ListItemsDismissable {
    var dismiss: (() -> Void) { get set }
}
