//
//  CharactersPagesViewEntityTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 16/3/23.
//

import XCTest
@testable import rpenya_rickandmorty_challenge

final class CharactersPagesViewEntityTests: XCTestCase {
    func test_addPage() {
        //Given
        let charactersPage = MockCharactersPage.givenCharactersPage()
        let charactersPages = MockCharactersPagesViewEntity.givenCharactersPages()
        //When
        let newCharactersPages = charactersPages.add(newPage: charactersPage)
        //Then
        XCTAssertEqual(newCharactersPages.characters.count, charactersPages.characters.count+charactersPage.characters.count)
    }
    
    func test_transformToListItems() {
        //Given
        let charactersPages = MockCharactersPagesViewEntity.givenCharactersPages()
        //When
        let items = charactersPages.transformToListItems(didReachListBottomAction: {}, onTapGesture: { _ in })
        //Then
        XCTAssertEqual(items.items.count, charactersPages.characters.count)
    }
    
    func test_isListCompleted_true() {
        //Given
        let charactersPages = CharactersPagesViewEntity(currentPage: MockPageInfoViewEntity.givenPageInfo(nextPage: nil))
        //When
        let result = charactersPages.isListCompleted()
        //Then
        XCTAssertTrue(result)
    }
    
    func test_isListCompleted_false() {
        //Given
        let charactersPages = CharactersPagesViewEntity(currentPage: MockPageInfoViewEntity.givenPageInfo())
        //When
        let result = charactersPages.isListCompleted()
        //Then
        XCTAssertFalse(result)
    }
}
