//
//  CharactersListViewModelTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 16/3/23.
//

import XCTest
@testable import rpenya_rickandmorty_challenge

final class CharactersListViewModelTests: XCTestCase {
    func test_transformToCharacterDetailDependencies_success() {
        //Given
        let model = CharactersListViewModel(getCharactersByPageNumberUseCase: MockGetCharactersByPageNumber.getUseCase())
        model.selectedCharacter = MockCharacterThinViewEntity.givenCharacterThin1()
        //When
        let dependencies = model.transformToCharacterDetailDependencies()
        //Then
        XCTAssertNotNil(dependencies)
    }
    
    func test_transformToCharacterDetailDependencies_nil() {
        //Given
        let model = CharactersListViewModel(getCharactersByPageNumberUseCase: MockGetCharactersByPageNumber.getUseCase())
        model.selectedCharacter = nil
        //When
        let dependencies = model.transformToCharacterDetailDependencies()
        //Then
        XCTAssertNil(dependencies)
    }
}
