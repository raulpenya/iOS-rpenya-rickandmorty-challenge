//
//  CharactersPageRemoteEntityTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 14/3/23.
//

import XCTest
@testable import Data
import Domain

final class CharactersPageRemoteEntityTests: XCTestCase {
    func tests_CharactersPageRemoteEntity_decode() {
        //Given
        let json = String.getCharactersPageSuccessResponse()
        //When
        let jsonData = json.data(using: .utf8)!
        let charactersPage: CharactersPageRemoteEntity? = try? JSONDecoder().decode(CharactersPageRemoteEntity.self, from: jsonData)
        //Then
        XCTAssertNotNil(charactersPage)
        XCTAssertFalse(charactersPage!.characters.isEmpty)
        XCTAssertTrue(charactersPage!.pageInfo.totalPages > 0)
    }
    
    func tests_CharactersPageRemoteEntity_transform_success() {
        //Given
        let charactersPage = MockCharactersPageRemoteEntity.givenCharactersPageRemoteEntity()
        //When
        let domainCharactersPage = charactersPage.transformToDomain()
        //Then
        XCTAssertEqual(charactersPage.characters.count, domainCharactersPage.character.count)
        XCTAssertEqual(charactersPage.characters[0].id, domainCharactersPage.character[0].id)
        XCTAssertEqual(charactersPage.characters[0].name, domainCharactersPage.character[0].name)
        XCTAssertEqual(charactersPage.characters[1].id, domainCharactersPage.character[1].id)
        XCTAssertEqual(charactersPage.characters[1].name, domainCharactersPage.character[1].name)
        XCTAssertEqual(charactersPage.pageInfo.totalPages, domainCharactersPage.pageInfo.totalPages)
    }
    
    func tests_CharactersPageRemoteEntity_transform_withCharactersNil() {
        //Given
        let charactersPage = MockCharactersPageRemoteEntity.givenCharactersPageRemoteEntity(nilIds: true)
        //When
        let domainCharactersPage = charactersPage.transformToDomain()
        //Then
        XCTAssertTrue(charactersPage.characters.count > domainCharactersPage.character.count)
    }
}
