//
//  CharacterDetailImageItemTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 16/3/23.
//

import XCTest
@testable import rpenya_rickandmorty_challenge

final class CharacterDetailImageItemTests: XCTestCase {
    func test_getters() {
        //Given
        let character = MockCharacterFatViewEntity.givenCharacterFat1()
        let item = CharacterDetailImageItem(character: character)
        //When
        let url = item.getImageUrl()
        //Then
        XCTAssertEqual(url?.absoluteString, character.imageUrl)
    }
}
