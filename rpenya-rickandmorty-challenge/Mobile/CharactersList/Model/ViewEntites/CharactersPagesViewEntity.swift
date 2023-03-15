//
//  CharactersPagesViewEntity.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 15/3/23.
//

import Foundation

struct CharactersPagesViewEntity {
    var characters: [CharacterThinViewEntity] = []
    var currentPage: PageInfoViewEntity = PageInfoViewEntity.getInitialPageInfo()
}

extension CharactersPagesViewEntity {
    func transformToListItems(isListCompleted: Bool, didReachListBottomAction: @escaping (() -> Void)) -> ListItems {
        return CharactersListItems(items: characters.compactMap { $0.transformToListItem().transformToAnyItem() }, isListCompleted: isListCompleted, didReachListBottomAction: didReachListBottomAction)
    }
}
