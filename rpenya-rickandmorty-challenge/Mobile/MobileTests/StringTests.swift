//
//  StringTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 16/3/23.
//

import XCTest
@testable import rpenya_rickandmorty_challenge

final class StringTests: XCTestCase {
    func test_nilIfEmpty_notEmpty() {
        //Given
        let string: String? = "notEmpty"
        //When
        let result = string.nilIfEmpty()
        //Then
        XCTAssertNotNil(result)
    }
    
    func test_nilIfEmpty_Empty() {
        //Given
        let string: String? = ""
        //When
        let result = string.nilIfEmpty()
        //Then
        XCTAssertNil(result)
    }
    
    func test_nilIfEmpty_Nil() {
        //Given
        let string: String? = nil
        //When
        let result = string.nilIfEmpty()
        //Then
        XCTAssertNil(result)
    }
}
