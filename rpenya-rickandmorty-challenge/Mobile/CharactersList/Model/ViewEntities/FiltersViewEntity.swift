//
//  FiltersViewEntity.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 17/3/23.
//

import Foundation

struct FiltersViewEntity {
    let filters: [FilterViewEntity]
    private static let defaultFilterName = "All"
    private static let filtersNames = ["All", "Female", "Male", "Genderless", "Unknown"]
    
    static func getFilters() -> FiltersViewEntity {
        return FiltersViewEntity(filters: filtersNames.compactMap { FilterViewEntity(text: $0, isSelected: $0 == defaultFilterName) })
    }
}

extension FiltersViewEntity {
    func transformToCharactersListFilterItems(onTapGesture: @escaping ((ListItemSelectable) -> Void)) -> CharactersListFilterItems {
        return CharactersListFilterItems(items: filters.compactMap { $0.transformToAnyItem(onTapGesture: onTapGesture) })
    }
}
