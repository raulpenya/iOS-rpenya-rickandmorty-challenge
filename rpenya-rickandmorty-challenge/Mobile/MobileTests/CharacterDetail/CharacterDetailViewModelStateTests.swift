//
//  CharacterDetailViewModelStateTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 16/3/23.
//

import XCTest
@testable import rpenya_rickandmorty_challenge

final class CharacterDetailViewModelStateTests: XCTestCase {
    func test_init_state() {
        //Given
        let model = CharacterDetailViewModel(getCharacterByIdUseCase: MockGetCharacterById.getUseCase(), character: MockCharacterFatViewEntity.givenCharacterFat1())
        //When
        let state = model.state
        //Then
        XCTAssertEqual(state, .idle)
    }
    
    func test_updateView_state() {
        //Given
        let character = MockCharacterFatViewEntity.givenCharacterFat1()
        let model = CharacterDetailViewModel(getCharacterByIdUseCase: MockGetCharacterById.getUseCase(), character: character)
        //When
        model.updateView(with: character)
        //Then
        XCTAssertEqual(model.state, .loaded(character.transformToCharacterDetailItems(dismiss: { })))
    }
    
    func test_receiveError_state() {
        //Given
        let model = CharacterDetailViewModel(getCharacterByIdUseCase: MockGetCharacterById.getUseCase(), character: MockCharacterFatViewEntity.givenCharacterFat1())
        let error = NSError(domain: "MockGetCharactersByPageNumber :: error", code: 0)
        //When
        model.receiveError(error)
        //Then
        XCTAssertEqual(model.state, .failed(error.transformToErrorDescription()))
    }

    func test_refreshData_state() {
        //Given
        let model = MockCharacterDetailViewModel.getModel()
        //When
        model.refreshData()
        //Then
        XCTAssertEqual(model.state, .loading)
    }
}
