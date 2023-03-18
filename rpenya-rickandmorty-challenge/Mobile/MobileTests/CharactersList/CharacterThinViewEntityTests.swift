//
//  CharacterThinViewEntityTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 16/3/23.
//

import XCTest
@testable import rpenya_rickandmorty_challenge

final class CharacterThinViewEntityTests: XCTestCase {
    func test_transformToListItem() {
        //Given
        let character = MockCharacterThinViewEntity.givenCharacterThin1()
        //When
        let item = character.transformToListItem(onTapGesture: { _ in })
        //Then
        XCTAssertEqual(character, (item as! CharactersListItem).character)
        XCTAssertEqual(character.id, (item as! CharactersListItem).id)
    }
    
    func test_transformToCharacterFatViewEntity() {
        //Given
        let character = MockCharacterThinViewEntity.givenCharacterThin1()
        //When
        let characterFat = character.transformToCharacterFatViewEntity()
        //Then
        XCTAssertEqual(character.id, characterFat.id)
        XCTAssertEqual(character.name, characterFat.name)
        XCTAssertEqual(character.gender, characterFat.gender)
        XCTAssertEqual(character.status, characterFat.status)
        XCTAssertEqual(character.imageUrl, characterFat.imageUrl)
    }
    
    func test_transformToUICharacterThin() {
        //Given
        let character = MockCharacter.givenCharacter1()
        //When
        let characterUI = character.transformToUICharacterThin()
        //Then
        XCTAssertEqual(character.id, characterUI.id)
        XCTAssertEqual(character.name, characterUI.name)
        XCTAssertEqual(character.gender, characterUI.gender)
        XCTAssertEqual(character.status, characterUI.status)
        XCTAssertEqual(character.imageUrl, characterUI.imageUrl)
    }
}
