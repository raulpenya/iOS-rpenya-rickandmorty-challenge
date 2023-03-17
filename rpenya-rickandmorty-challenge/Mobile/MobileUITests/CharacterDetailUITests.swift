//
//  CharacterDetailUITests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 17/3/23.
//

import XCTest

final class CharacterDetailUITests: XCTestCase {
    private var app: XCUIApplication!
    
    override func setUp() {
        continueAfterFailure = false
        app = XCUIApplication()
//        setupSnapshot(app)
        app.launch()
    }
    
    override func tearDown() {
        app = nil
    }
    
    func navigationToDetail() {
        let predicate1 = NSPredicate(format: "identifier == 'PlainVGridPaginatedView'")
        let predicate2 = NSPredicate(format: "identifier == 'CharacterListCellView'")
        let grid = app.scrollViews.containing(predicate1).element(boundBy: 0)
        XCTAssertTrue(grid.waitForExistence(timeout: 5))
        let cell = grid.images.containing(predicate2).element(boundBy: 0)
        cell.tap()
    }
    
    func test_closeButtonPressed() {
        navigationToDetail()
        let predicate1 = NSPredicate(format: "identifier == 'CharacterDetailList'")
        let characterDetail = app.otherElements.containing(predicate1).element(boundBy: 0)
        XCTAssertTrue(characterDetail.waitForExistence(timeout: 5))
        let button = characterDetail.buttons.element(boundBy: 0)
        button.tap()
        XCTAssertFalse(characterDetail.waitForExistence(timeout: 3))
    }
}
