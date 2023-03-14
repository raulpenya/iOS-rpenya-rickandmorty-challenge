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
    
//    func tests_CharactersPageRemoteEntity_transform() {
//        //Given
//        let products =
//        //When
//        let domainProducts = products.transformToDomain()
//        //Then
//        XCTAssertEqual(products.products.count, domainProducts.products.count)
//        XCTAssertEqual(products.products[0].code, domainProducts.products[0].code)
//        XCTAssertEqual(products.products[0].name, domainProducts.products[0].name)
//        XCTAssertEqual(products.products[0].price, domainProducts.products[0].price)
//    }
}
