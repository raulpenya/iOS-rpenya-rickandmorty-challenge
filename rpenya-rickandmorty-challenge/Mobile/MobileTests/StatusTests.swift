//
//  StatusTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 16/3/23.
//

import XCTest
import Domain
@testable import rpenya_rickandmorty_challenge

final class StatusTests: XCTestCase {
    func test_getColor_alive() {
        //Given
        let status = Status.alive
        //When
        let color = status.getColor()
        //Then
        XCTAssertEqual(color, Colors.statusAlive)
    }
    
    func test_getColor_dead() {
        //Given
        let status = Status.dead
        //When
        let color = status.getColor()
        //Then
        XCTAssertEqual(color, Colors.statusDead)
    }
    
    func test_getColor_unknown() {
        //Given
        let status = Status.unknown
        //When
        let color = status.getColor()
        //Then
        XCTAssertEqual(color, Colors.statusUnknown)
    }
    
    func test_getColor_none() {
        //Given
        let status = Status.none
        //When
        let color = status.getColor()
        //Then
        XCTAssertEqual(color, Colors.textColor)
    }
}
