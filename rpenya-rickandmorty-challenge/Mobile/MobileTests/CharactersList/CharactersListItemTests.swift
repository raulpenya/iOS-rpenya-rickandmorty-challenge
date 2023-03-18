//
//  CharactersListItemTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 16/3/23.
//

import XCTest
import SwiftUI
@testable import rpenya_rickandmorty_challenge

final class CharactersListItemTests: XCTestCase {
    func test_getters() {
        //Given
        let character = MockCharacterThinViewEntity.givenCharacterThin1()
        let item = CharactersListItem(character: character, onTapGesture: { _ in })
        //When
        let name = item.getName()
        let url = item.getImageUrl()
        let status = item.getStatusString()
        let color = item.getStatusColor()
        let gender = item.getGenderString()
        //Then
        XCTAssertEqual(name, character.name)
        XCTAssertEqual(url?.absoluteString, character.imageUrl)
        XCTAssertEqual(status, character.status.rawValue)
        XCTAssertEqual(color, Color.green)
        XCTAssertEqual(gender, character.gender.rawValue)
    }
}
