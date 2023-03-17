//
//  FilterViewEntityTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 17/3/23.
//

import XCTest
@testable import rpenya_rickandmorty_challenge

final class FilterViewEntityTests: XCTestCase {
    func test_transformToAnyItem() {
        //Given
        let filter = MockFilterViewEntity.givenFilterViewEntity1()
        //When
        let anyItem = filter.transformToAnyItem(onTapGesture: { _ in })
        //Then
        XCTAssertEqual((anyItem.item as! CharactersListFilterItem).filter, filter)
    }
    
    func test_transformToCharactersListFilterItem() {
        //Given
        let filter = MockFilterViewEntity.givenFilterViewEntity1()
        //When
        let item = filter.transformToCharactersListFilterItem(onTapGesture: { _ in })
        //Then
        XCTAssertEqual(item.filter, filter)
        XCTAssertEqual(item.id, filter.text)
    }
    
    func test_transformToQueryParam_notNil() {
        //Given
        let filter = MockFilterViewEntity.givenFilterViewEntity2()
        //When
        let queryParam = filter.transformToQueryParam()
        //Then
        XCTAssertNotNil(queryParam)
        XCTAssertEqual(queryParam, filter.text)
    }
    
    func test_transformToQueryParam_nil() {
        //Given
        let filter = MockFilterViewEntity.givenFilterViewEntity1()
        //When
        let queryParam = filter.transformToQueryParam()
        //Then
        XCTAssertNil(queryParam)
        XCTAssertEqual(FiltersViewEntity.noFilterName, filter.text)
    }
}
