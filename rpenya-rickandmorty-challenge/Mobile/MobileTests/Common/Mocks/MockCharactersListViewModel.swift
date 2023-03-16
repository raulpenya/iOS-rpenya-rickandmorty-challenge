//
//  MockCharactersListViewModel.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 15/3/23.
//

import Foundation
@testable import rpenya_rickandmorty_challenge

class MockCharactersListViewModel: CharactersListViewModel {
//    var getProductsWithPromotionsCalled = false
    var updateViewCalled = false
    
    static func getModel() -> MockCharactersListViewModel {
        return MockCharactersListViewModel(getCharactersByPageNumberUseCase: MockGetCharactersByPageNumber.getUseCase())
    }
}
