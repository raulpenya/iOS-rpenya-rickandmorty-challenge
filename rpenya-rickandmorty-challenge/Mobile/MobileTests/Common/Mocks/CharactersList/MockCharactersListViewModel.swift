//
//  MockCharactersListViewModel.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 15/3/23.
//

import Foundation
@testable import rpenya_rickandmorty_challenge

class MockCharactersListViewModel: CharactersListViewModel {
    var loadDataCalled = false
    var getCharactersInitialPageCalled = false
    var getCharactersPageCalled = false
    var updateViewCalled = false
    
    static func getModel() -> MockCharactersListViewModel {
        return MockCharactersListViewModel(getCharactersByPageNumberUseCase: MockGetCharactersByPageNumber.getUseCase())
    }
    
    override func loadData() {
        loadDataCalled = true
        super.loadData()
    }
    
    override func getCharactersInitialPage(filterName: String?) {
        getCharactersInitialPageCalled = true
        super.getCharactersInitialPage(filterName: filterName)
    }
    
    override func getCharactersPage(with page: Int, and filterName: String?) {
        getCharactersPageCalled = true
    }
    
    override func updateView(with charactersPages: CharactersPagesViewEntity) {
        updateViewCalled = true
    }
}
