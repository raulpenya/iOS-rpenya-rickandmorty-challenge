//
//  FiltersViewEntity.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 17/3/23.
//

import Foundation

struct FiltersViewEntity {
    let filters: [FilterViewEntity]
    static let noFilterName = "All"
    private static let defaultFilterName = noFilterName
    private static let filtersNames = [noFilterName, "Female", "Male", "Genderless", "Unknown"]
    
    static func getFilters(selectedFilterName: String = defaultFilterName) -> FiltersViewEntity {
        return FiltersViewEntity(filters: filtersNames.compactMap { FilterViewEntity(text: $0, isSelected: $0 == selectedFilterName) })
    }
}

extension FiltersViewEntity {
    func transformToCharactersListFilterItems(onTapGesture: @escaping ((ListItemSelectable) -> Void)) -> CharactersListFilterItems {
        return CharactersListFilterItems(items: filters.compactMap { $0.transformToAnyItem(onTapGesture: onTapGesture) })
    }
}

extension FiltersViewEntity {
    func didSelectFilter(_ filter: FilterViewEntity) -> FiltersViewEntity {
        return FiltersViewEntity.getFilters(selectedFilterName: filter.text)
    }
    
    func getSelectedFilter() -> FilterViewEntity {
        let selectedFiler = filters.first(where: { $0.isSelected })
        assert((selectedFiler != nil), "getSelectedFilter :: no selected filter")
        return selectedFiler ?? FilterViewEntity(text: FiltersViewEntity.defaultFilterName, isSelected: true)
    }
}
