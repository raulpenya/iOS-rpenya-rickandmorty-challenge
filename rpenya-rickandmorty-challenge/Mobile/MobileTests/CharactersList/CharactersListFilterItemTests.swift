//
//  CharactersListFilterItemTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 17/3/23.
//

import XCTest
@testable import rpenya_rickandmorty_challenge

final class CharactersListFilterItemTests: XCTestCase {
    func test_getters() {
        //Given
        let item = MockCharactersListFilterItem.givenCharactersListFilterItem1()
        //When
        let text = item.getText()
        //Then
        XCTAssertEqual(text, item.filter.text)
    }
}
