//
//  FiltersViewEntityTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 17/3/23.
//

import XCTest
@testable import rpenya_rickandmorty_challenge

final class FiltersViewEntityTests: XCTestCase {
    func test_getFilters() {
        //Given
        let defaultFilterName = FiltersViewEntity.defaultFilterName
        //When
        let filters = FiltersViewEntity.getFilters()
        //Then
        XCTAssertEqual(filters.getSelectedFilter().text, defaultFilterName)
        XCTAssertEqual(filters.filters.count, FiltersViewEntity.filtersNames.count)
    }
    
    func test_transformToCharactersListFilterItems() {
        //Given
        let filters = MockFiltersViewEntity.givenFiltersViewEntity()
        //When
        let filterItems = filters.transformToCharactersListFilterItems(onTapGesture: { _ in })
        //Then
        XCTAssertEqual(filterItems.items.count, filters.filters.count)
    }
    
    func test_didSelectFilter() {
        //Given
        let filters = MockFiltersViewEntity.givenFiltersViewEntity()
        let filter = MockFilterViewEntity.givenFilterViewEntity2()
        //When
        let filtersResult = filters.didSelectFilter(filter)
        //Then
        XCTAssertNotEqual(filters.getSelectedFilter(), filter)
        XCTAssertEqual(filtersResult.getSelectedFilter(), filter)
    }
    
    func test_getSelectedFilter() {
        //Given
        let filters = MockFiltersViewEntity.givenFiltersViewEntity()
        //When
        let filter = filters.getSelectedFilter()
        //Then
        XCTAssertEqual(filter, MockFilterViewEntity.givenFilterViewEntity1())
    }
}
