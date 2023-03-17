//
//  CharactersListViewModelStateTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 16/3/23.
//

import XCTest
@testable import rpenya_rickandmorty_challenge

final class CharactersListViewModelStateTests: XCTestCase {
    func test_init_state() {
        //Given
        let model = CharactersListViewModel(getCharactersByPageNumberUseCase: MockGetCharactersByPageNumber.getUseCase())
        //When
        let state = model.state
        //Then
        XCTAssertEqual(state, .idle)
    }
    
    func test_updateView_state() {
        //Given
        let model = CharactersListViewModel(getCharactersByPageNumberUseCase: MockGetCharactersByPageNumber.getUseCase())
        let charactersPages = MockCharactersPagesViewEntity.givenCharactersPages()
        //When
        model.updateView(with: charactersPages)
        //Then
        XCTAssertEqual(model.state, .loaded(charactersPages.transformToListItems(didReachListBottomAction: {}, onTapGesture: { _ in })))
    }
    
    func test_receiveError_state() {
        //Given
        let model = CharactersListViewModel(getCharactersByPageNumberUseCase: MockGetCharactersByPageNumber.getUseCase())
        let error = NSError(domain: "MockGetCharactersByPageNumber :: error", code: 0)
        //When
        model.receiveError(error)
        //Then
        XCTAssertEqual(model.state, .failed(error.transformToErrorDescription()))
    }

    func test_getProductsWithPromotions_state() {
        //Given
        let model = CharactersListViewModel(getCharactersByPageNumberUseCase: MockGetCharactersByPageNumber.getUseCase())
        //When
        model.getCharactersInitialPagePage()
        //Then
        XCTAssertEqual(model.state, .loading)
    }
}
