//
//  PageInfoRemoteEntityTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 14/3/23.
//

import XCTest
@testable import Data
import Domain

final class PageInfoRemoteEntityTests: XCTestCase {
    func test_PageInfoRemoteEntity_success() {
        //Given
        let page = MockPageInfoRemoteEntity.givenPageInfoRemoteEntity()
        //When
        let domainPage = page.transformToDomain()
        //Then
        XCTAssertNotNil(domainPage)
        XCTAssertEqual(domainPage.nextPage, 2)
        XCTAssertEqual(domainPage.totalPages, 42)
    }
    
    func test_PageInfoRemoteEntity_nextPageUrlWrongParam() {
        //Given
        let page = MockPageInfoRemoteEntity.givenPageInfoRemoteEntity(nextPageUrl: MockPageInfoRemoteEntity.nextPageUrlWrongParam)
        //When
        let domainPage = page.transformToDomain()
        //Then
        XCTAssertNotNil(domainPage)
        XCTAssertNil(domainPage.nextPage)
        XCTAssertEqual(domainPage.totalPages, 42)
    }
    
    func test_PageInfoRemoteEntity_nextPageUrlNoParam() {
        //Given
        let page = MockPageInfoRemoteEntity.givenPageInfoRemoteEntity(nextPageUrl: MockPageInfoRemoteEntity.nextPageUrlNoParam)
        //When
        let domainPage = page.transformToDomain()
        //Then
        XCTAssertNotNil(domainPage)
        XCTAssertNil(domainPage.nextPage)
        XCTAssertEqual(domainPage.totalPages, 42)
    }
    
    func test_PageInfoRemoteEntity_nextPageUrlNil() {
        //Given
        let page = MockPageInfoRemoteEntity.givenPageInfoRemoteEntity(nextPageUrl: nil)
        //When
        let domainPage = page.transformToDomain()
        //Then
        XCTAssertNotNil(domainPage)
        XCTAssertNil(domainPage.nextPage)
        XCTAssertEqual(domainPage.totalPages, 42)
    }
}
