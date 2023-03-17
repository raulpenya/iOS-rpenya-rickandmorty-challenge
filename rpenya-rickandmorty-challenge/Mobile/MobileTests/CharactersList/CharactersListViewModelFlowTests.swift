//
//  CharactersListViewModelFlowTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 16/3/23.
//

import XCTest
@testable import rpenya_rickandmorty_challenge

final class CharactersListViewModelFlowTests: XCTestCase {
    func test_loadData_flow() {
        //Given
        let model = MockCharactersListViewModel.getModel()
        //When
        model.loadData()
        //Then
        XCTAssertTrue(model.getCharactersInitialPageCalled)
        XCTAssertTrue(model.getCharactersPageCalled)
    }
    
    func test_didReachListBottomAction_withNextPage_flow() {
        //Given
        let model = MockCharactersListViewModel.getModel()
        model.currentCharacters = CharactersPagesViewEntity(currentPage: MockPageInfoViewEntity.givenPageInfo(nextPage: 1))
        //When
        model.didReachListBottomAction()
        //Then
        XCTAssertTrue(model.getCharactersPageCalled)
    }
    
    func test_didReachListBottomAction_withoutNextPage_flow() {
        //Given
        let model = MockCharactersListViewModel.getModel()
        model.currentCharacters = CharactersPagesViewEntity(currentPage: MockPageInfoViewEntity.givenPageInfo(nextPage: nil))
        //When
        model.didReachListBottomAction()
        //Then
        XCTAssertFalse(model.getCharactersPageCalled)
    }
    
    func test_refreshData_flow() {
        //Given
        let model = MockCharactersListViewModel.getModel()
        //When
        model.refreshData()
        //Then
        XCTAssertTrue(model.getCharactersInitialPageCalled)
        XCTAssertTrue(model.getCharactersPageCalled)
    }
    
    func test_didSelectItem_flow() {
        //Given
        let model = MockCharactersListViewModel.getModel()
        let item = MockCharactersListItem.givenCharactersListItem1()
        //When
        model.didSelectItem(item)
        //Then
        XCTAssertTrue(model.presentCharacterDetail)
        XCTAssertNotNil(model.selectedCharacter)
        XCTAssertEqual(model.selectedCharacter?.id, item.character.id)
    }
    
    func test_updateView_flow() {
        //Given
        let model = MockCharactersListViewModel.getModel()
        //When
        model.receiveResult(MockCharactersPage.givenCharactersPage())
        //Then
        XCTAssertTrue(model.updateViewCalled)
    }
}
