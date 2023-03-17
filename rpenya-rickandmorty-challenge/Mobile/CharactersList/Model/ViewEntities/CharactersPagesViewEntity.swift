//
//  CharactersPagesViewEntity.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 15/3/23.
//

import Foundation
import Domain

struct CharactersPagesViewEntity {
    var characters: [CharacterThinViewEntity] = []
    var currentPage: PageInfoViewEntity = PageInfoViewEntity.getInitialPageInfo()
}

extension CharactersPagesViewEntity {
    func add(newPage: CharactersPage) -> CharactersPagesViewEntity {
        var currentCharacters = characters
        currentCharacters.append(contentsOf: newPage.characters.compactMap { $0.transformToUICharacterThin() })
        return CharactersPagesViewEntity(characters: currentCharacters, currentPage: newPage.pageInfo.transformToUI())
    }
    
    func transformToListItems(filters: FiltersViewEntity, didReachListBottomAction: @escaping (() -> Void), onTapGesture: @escaping ((ListItemSelectable) -> Void)) -> ListItems {
        return CharactersListItems(sectionHeader: filters.transformToCharactersListFilterItems(onTapGesture: onTapGesture), items: characters.compactMap { $0.transformToListItem(onTapGesture: onTapGesture).transformToAnyItem() }, isListCompleted: isListCompleted(), didReachListBottomAction: didReachListBottomAction)
    }
}

extension CharactersPagesViewEntity {
    func isListCompleted() -> Bool {
        return currentPage.isLastPage()
    }
}
