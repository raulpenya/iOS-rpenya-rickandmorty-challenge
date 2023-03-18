//
//  CharactersListUITests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 17/3/23.
//

import XCTest

final class CharactersListUITests: XCTestCase {
    private var app: XCUIApplication!
    
    override func setUp() {
        continueAfterFailure = false
        app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }
    
    override func tearDown() {
        app = nil
    }
    
    func test_initialLoad_success() {
        let predicate1 = NSPredicate(format: "identifier == 'PlainVGridPaginatedView'")
        let predicate2 = NSPredicate(format: "identifier == 'PlainHGridView'")
        let grid = app.scrollViews.containing(predicate1).element(boundBy: 0)
        let filters = app.scrollViews.containing(predicate2).element(boundBy: 0)
        XCTAssertTrue(grid.waitForExistence(timeout: 5))
        snapshot("CharactersList_initialLoad")
        XCTAssertTrue(filters.waitForExistence(timeout: 5))
    }
    
    func test_scrollDown_success() {
        let predicate1 = NSPredicate(format: "identifier == 'PlainVGridPaginatedView'")
        let grid = app.scrollViews.containing(predicate1).element(boundBy: 0)
        XCTAssertTrue(grid.waitForExistence(timeout: 5))
        grid.swipeUp()
        grid.swipeUp()
        grid.swipeUp()
        grid.swipeUp()
        grid.swipeUp()
        grid.swipeUp()
        grid.swipeUp()
        grid.swipeUp()
        grid.swipeUp()
        grid.swipeUp()
        grid.swipeUp()
        grid.swipeUp()
        snapshot("CharactersList_scrollDown")
    }
    
    func test_tapFilters_success() {
        let predicate1 = NSPredicate(format: "identifier == 'PlainVGridPaginatedView'")
        let predicate2 = NSPredicate(format: "identifier == 'PlainHGridView'")
        let grid = app.scrollViews.containing(predicate1).element(boundBy: 0)
        let filters = app.scrollViews.containing(predicate2).element(boundBy: 0)
        XCTAssertTrue(grid.waitForExistence(timeout: 5))
        XCTAssertTrue(filters.waitForExistence(timeout: 5))
        let filter1 = filters.staticTexts.element(boundBy: 1)
        filter1.tap()
        let filter2 = filters.staticTexts.element(boundBy: 2)
        filter2.tap()
        let filter3 = filters.staticTexts.element(boundBy: 3)
        filter3.tap()
        let filter4 = filters.staticTexts.element(boundBy: 4)
        filter4.tap()
        let filter5 = filters.staticTexts.element(boundBy: 0)
        filter5.tap()
    }
    
    func test_tapCharacterListCell_success() {
        let predicate1 = NSPredicate(format: "identifier == 'PlainVGridPaginatedView'")
        let predicate2 = NSPredicate(format: "identifier == 'CharacterListCellView'")
        let grid = app.scrollViews.containing(predicate1).element(boundBy: 0)
        XCTAssertTrue(grid.waitForExistence(timeout: 5))
        let cell = grid.images.containing(predicate2).element(boundBy: 0)
        cell.tap()
        let predicate3 = NSPredicate(format: "identifier == 'CharacterDetailList'")
        let characterDetail = app.otherElements.containing(predicate3).element(boundBy: 0)
        XCTAssertTrue(characterDetail.waitForExistence(timeout: 5))
    }
}
