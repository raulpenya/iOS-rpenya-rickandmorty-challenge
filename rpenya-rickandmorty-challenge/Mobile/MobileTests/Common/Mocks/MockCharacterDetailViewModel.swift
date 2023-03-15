//
//  MockCharacterDetailViewModel.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 15/3/23.
//

import Foundation
@testable import rpenya_rickandmorty_challenge

class MockCharacterDetailViewModel: CharacterDetailViewModel {
//    var getProductsWithPromotionsCalled = false
    var updateViewCalled = false
    
    static func getModel() -> MockCharacterDetailViewModel {
        return MockCharacterDetailViewModel(getCharacterByIdUseCase: MockGetCharacterById.getUseCase(), character: MockCharacterFatViewEntity.givenCharacterFat1())
    }
}
