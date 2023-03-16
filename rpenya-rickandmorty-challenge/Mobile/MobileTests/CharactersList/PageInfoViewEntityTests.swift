//
//  PageInfoViewEntityTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 16/3/23.
//

import XCTest
@testable import rpenya_rickandmorty_challenge

final class PageInfoViewEntityTests: XCTestCase {
    func test_isLastPage_true() {
        //Given
        let pageInfo = MockPageInfoViewEntity.givenPageInfo(nextPage: nil)
        //When
        let result = pageInfo.isLastPage()
        //Then
        XCTAssertTrue(result)
    }
    
    func test_isLastPage_false() {
        //Given
        let pageInfo = MockPageInfoViewEntity.givenPageInfo()
        //When
        let result = pageInfo.isLastPage()
        //Then
        XCTAssertFalse(result)
    }
    
    func test_transformToUI() {
        //Given
        let pageInfo = MockPageInfo.givenPageInfo()
        //When
        let pageInfoUI = pageInfo.transformToUI()
        //Then
        XCTAssertEqual(pageInfo.nextPage, pageInfoUI.nextPage)
        XCTAssertEqual(pageInfo.totalPages, pageInfoUI.totalPages)
    }
}
