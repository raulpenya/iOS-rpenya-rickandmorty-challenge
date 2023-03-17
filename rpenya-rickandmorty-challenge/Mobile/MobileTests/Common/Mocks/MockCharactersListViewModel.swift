//
//  MockCharactersListViewModel.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 15/3/23.
//

import Foundation
@testable import rpenya_rickandmorty_challenge

class MockCharactersListViewModel: CharactersListViewModel {
    var getCharactersInitialPagePageCalled = false
    var getCharactersPageCalled = false
    var updateViewCalled = false
    
    static func getModel() -> MockCharactersListViewModel {
        return MockCharactersListViewModel(getCharactersByPageNumberUseCase: MockGetCharactersByPageNumber.getUseCase())
    }
    
    override func getCharactersInitialPagePage() {
        getCharactersInitialPagePageCalled = true
        super.getCharactersInitialPagePage()
    }
    
    override func getCharactersPage(with page: Int) {
        getCharactersPageCalled = true
    }
    
    override func updateView(with charactersPages: CharactersPagesViewEntity) {
        updateViewCalled = true
    }
}
