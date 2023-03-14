//
//  CharacterRemoteEntityTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 14/3/23.
//

import XCTest
@testable import Data
import Domain

final class CharacterRemoteEntityTests: XCTestCase {
    func tests_CharacterRemoteEntity_decode() {
        //Given
        let json = String.getCharacterSuccessResponse()
        //When
        let jsonData = json.data(using: .utf8)!
        let character: CharacterRemoteEntity? = try? JSONDecoder().decode(CharacterRemoteEntity.self, from: jsonData)
        //Then
        XCTAssertNotNil(character)
    }
    
    func tests_CharacterRemoteEntity_transform_success() {
        //Given
        let character = MockCharacterRemoteEntity.givenCharacterRemoteEntity1()
        //When
        let domainCharacter = character.transformToDomain()
        //Then
        XCTAssertNotNil(domainCharacter)
        XCTAssertEqual(character.id, domainCharacter?.id)
        XCTAssertEqual(character.name, domainCharacter?.name)
        XCTAssertEqual(character.imageUrl, domainCharacter?.imageUrl)
        XCTAssertEqual(domainCharacter!.gender, Gender.male)
        XCTAssertEqual(domainCharacter!.status, Status.alive)
        XCTAssertEqual(character.origin?.name, domainCharacter?.originName)
        XCTAssertEqual(character.location?.name, domainCharacter?.locationName)
        XCTAssertEqual(character.type, domainCharacter?.type)
        XCTAssertEqual(character.species, domainCharacter?.species)
    }
    
    func tests_CharacterRemoteEntity_transform_withoutID() {
        //Given
        let character = MockCharacterRemoteEntity.givenCharacterRemoteEntity1(id: nil)
        //When
        let domainCharacter = character.transformToDomain()
        //Then
        XCTAssertNil(domainCharacter)
    }
    
    func tests_CharacterRemoteEntity_transform_withoutName() {
        //Given
        let character = MockCharacterRemoteEntity.givenCharacterRemoteEntity1(name: nil)
        //When
        let domainCharacter = character.transformToDomain()
        //Then
        XCTAssertNil(domainCharacter)
    }
    
    func tests_CharacterRemoteEntity_transform_withoutImageUrl() {
        //Given
        let character = MockCharacterRemoteEntity.givenCharacterRemoteEntity1(imageUrl: nil)
        //When
        let domainCharacter = character.transformToDomain()
        //Then
        XCTAssertNil(domainCharacter)
    }
}
