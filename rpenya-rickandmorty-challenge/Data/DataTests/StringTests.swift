//
//  StringTests.swift
//  DataTests
//
//  Created by raulbot on 16/3/23.
//

import XCTest
@testable import Data

final class StringTests: XCTestCase {
    func test_getURLLastComponent_success() {
        //Given
        let string = "https://rickandmortyapi.com/api/episode/1"
        //When
        let number = string.getURLLastComponent()
        //Then
        XCTAssertNotNil(number)
        XCTAssertEqual(number, "1")
    }
    
    func test_getURLLastComponent_nil() {
        //Given
        let string = ""
        //When
        let number = string.getURLLastComponent()
        //Then
        XCTAssertNil(number)
    }
}
