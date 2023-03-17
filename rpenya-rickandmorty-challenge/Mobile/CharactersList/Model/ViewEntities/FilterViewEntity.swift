//
//  FilterViewEntity.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 17/3/23.
//

import Foundation

struct FilterViewEntity {
    let text: String
    let isSelected: Bool
}

extension FilterViewEntity {
    func transformToAnyItem(onTapGesture: @escaping ((ListItemSelectable) -> Void)) -> AnyItem {
        return transformToCharactersListFilterItem(onTapGesture: onTapGesture).transformToAnyItem()
    }
    
    func transformToCharactersListFilterItem(onTapGesture: @escaping ((ListItemSelectable) -> Void)) -> CharactersListFilterItem {
        return CharactersListFilterItem(filter: self, onTapGesture: onTapGesture)
    }
}
