//
//  CharactersListRouterTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 16/3/23.
//

import XCTest
@testable import rpenya_rickandmorty_challenge

final class CharactersListRouterTests: XCTestCase {
    func test_destination() {
        //Given
        let router = ProductsListRouter()
        let dependencies = ShoppingBasketDetailDependencies(shoppingBasket: MockShoppingBasketViewEntity.givenShoppingBasket(), delegate: MockProductsListViewModel.getModel())
        //When
        let destination = router.destination(dependencies)
        //Then
        XCTAssertNotNil(destination)
    }
}
