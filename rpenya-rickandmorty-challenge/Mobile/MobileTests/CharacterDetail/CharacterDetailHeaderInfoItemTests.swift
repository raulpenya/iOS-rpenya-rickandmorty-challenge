//
//  CharacterDetailHeaderInfoItemTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 16/3/23.
//

import XCTest
import SwiftUI
@testable import rpenya_rickandmorty_challenge

final class CharacterDetailHeaderInfoItemTests: XCTestCase {
    func test_getters() {
        //Given
        let character = MockCharacterFatViewEntity.givenCharacterFat1()
        let item = CharacterDetailHeaderInfoItem(character: character)
        //When
        let name = item.getName()
        let status = item.getStatusString()
        let color = item.getStatusColor()
        let gender = item.getGenderString()
        //Then
        XCTAssertEqual(name, character.name)
        XCTAssertEqual(status, character.status.rawValue)
        XCTAssertEqual(color, Color.green)
        XCTAssertEqual(gender, character.gender.rawValue)
    }
}
