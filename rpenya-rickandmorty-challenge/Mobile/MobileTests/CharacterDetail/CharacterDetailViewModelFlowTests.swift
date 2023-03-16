//
//  CharacterDetailViewModelFlowTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 16/3/23.
//

import XCTest
@testable import rpenya_rickandmorty_challenge

final class CharacterDetailViewModelFlowTests: XCTestCase {
    func test_loadData_flow() {
        //Given
        let model = MockCharacterDetailViewModel.getModel()
        //When
        model.loadData()
        //Then
        XCTAssertTrue(model.updateViewCalled)
        XCTAssertTrue(model.getCharacterCalled)
    }
    
    func test_refreshData_flow() {
        //Given
        let model = MockCharacterDetailViewModel.getModel()
        //When
        model.refreshData()
        //Then
        XCTAssertTrue(model.loadDataCalled)
        XCTAssertTrue(model.updateViewCalled)
        XCTAssertTrue(model.getCharacterCalled)
    }
    
    func test_dismissButtonPressed_flow() {
        //Given
        let model = MockCharacterDetailViewModel.getModel()
        //When
        model.dismissButtonPressed()
        //Then
        XCTAssertTrue(model.dismissCharacterDetail)
    }
    
    func test_receiveResult_flow() {
        //Given
        let model = MockCharacterDetailViewModel.getModel()
        //When
        model.receiveResult(MockCharacter.givenCharacter1())
        //Then
        XCTAssertTrue(model.updateViewCalled)
    }
}
