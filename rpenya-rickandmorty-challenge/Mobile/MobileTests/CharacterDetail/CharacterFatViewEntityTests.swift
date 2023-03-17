//
//  CharacterFatViewEntityTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 16/3/23.
//

import XCTest
@testable import rpenya_rickandmorty_challenge

final class CharacterFatViewEntityTests: XCTestCase {
    func test_transformToUIharacterFat() {
        //Given
        let character = MockCharacter.givenCharacter1()
        //When
        let characterUIFat = character.transformToUIharacterFat()
        //Then
        XCTAssertEqual(character.id, characterUIFat.id)
        XCTAssertEqual(character.name, characterUIFat.name)
        XCTAssertEqual(character.status, characterUIFat.status)
        XCTAssertEqual(character.species, characterUIFat.species)
        XCTAssertEqual(character.type, characterUIFat.type)
        XCTAssertEqual(character.gender, characterUIFat.gender)
        XCTAssertEqual(character.originName, characterUIFat.originName)
        XCTAssertEqual(character.imageUrl, characterUIFat.imageUrl)
        XCTAssertEqual(character.episodes, characterUIFat.episodes)
    }
    
    func test_transformToCharacterDetailItems() {
        //Given
        let character = MockCharacterFatViewEntity.givenCharacterFat1()
        //When
        let listItems = character.transformToCharacterDetailItems(dismiss: { })
        //Then
        XCTAssertEqual(listItems.items.count, character.transformToCharacterDetailInfoItems().count + 2)
    }
    
    func test_transformToCharacterDetailImageItem() {
        //Given
        let character = MockCharacterFatViewEntity.givenCharacterFat1()
        //When
        let item = character.transformToCharacterDetailImageItem()
        //Then
        XCTAssertEqual((item.item as! CharacterDetailImageItem).character.id, character.id)
        XCTAssertEqual((item.item as! CharacterDetailImageItem).view, .headerImage)
    }
    
    func test_transformToCharacterDetailHeaderInfoItem() {
        //Given
        let character = MockCharacterFatViewEntity.givenCharacterFat1()
        //When
        let item = character.transformToCharacterDetailHeaderInfoItem()
        //Then
        XCTAssertEqual((item.item as! CharacterDetailHeaderInfoItem).character.id, character.id)
        XCTAssertEqual((item.item as! CharacterDetailHeaderInfoItem).view, .headerInfo)
    }
    
    func test_transformToCharacterDetailInfoItems() {
        //Given
        let character = MockCharacterFatViewEntity.givenCharacterFat2()
        //When
        let items = character.transformToCharacterDetailInfoItems()
        //Then
        XCTAssertEqual(items.count, 5)
    }
}
