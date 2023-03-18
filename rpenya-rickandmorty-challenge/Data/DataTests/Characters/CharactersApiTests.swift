//
//  CharactersApiTests.swift
//  rpenya-rickandmorty-challengeTests
//
//  Created by raulbot on 14/3/23.
//

import XCTest
@testable import Data
import Domain

final class CharactersApiTests: XCTestCase {
    var urlRequest: URLRequest?
    var apiError: Error?
    
    override func setUpWithError() throws {
        urlRequest = nil
        apiError = nil
    }
    
    func test_getCharactersByPageNumber_withFilter_request() {
        //Given
        let page = 1
        let filterName = "Male"
        let requestValues = GetCharactersByPageNumberRequestValues(page: page, filter: filterName)
        //When
        do {
            urlRequest = try CharactersApi.getCharactersByPageNumber(requestValues).asURLRequest()
        } catch {
            apiError = error
        }
        //Then
        XCTAssertNil(apiError)
        XCTAssertNotNil(urlRequest)
        XCTAssertEqual(urlRequest?.url?.absoluteString, DataConstants.baseUrl + DataConstants.charactersContext + "?page=\(String(page))" + String(format: "&gender=\(filterName)"))
        XCTAssertEqual(urlRequest?.httpBody, nil)
        XCTAssertEqual(urlRequest?.allHTTPHeaderFields?.count, 2)
        XCTAssertEqual(urlRequest?.cachePolicy, .returnCacheDataElseLoad)
        XCTAssertEqual(urlRequest?.httpMethod, HTTPMethod.get.rawValue)
    }
    
    func test_getCharactersByPageNumber_withoutFilter_request() {
        //Given
        let page = 1
        let filterName: String? = nil
        let requestValues = GetCharactersByPageNumberRequestValues(page: page, filter: filterName)
        //When
        do {
            urlRequest = try CharactersApi.getCharactersByPageNumber(requestValues).asURLRequest()
        } catch {
            apiError = error
        }
        //Then
        XCTAssertNil(apiError)
        XCTAssertNotNil(urlRequest)
        XCTAssertEqual(urlRequest?.url?.absoluteString, DataConstants.baseUrl + DataConstants.charactersContext + "?page=\(String(page))")
        XCTAssertEqual(urlRequest?.httpBody, nil)
        XCTAssertEqual(urlRequest?.allHTTPHeaderFields?.count, 2)
        XCTAssertEqual(urlRequest?.cachePolicy, .returnCacheDataElseLoad)
        XCTAssertEqual(urlRequest?.httpMethod, HTTPMethod.get.rawValue)
    }
    
    func test_getCharacterById_request() {
        func test_getCharacterById_request() {
            //Given
            let id = "812"
            let requestValues = GetCharacterByIdRequestValues(id: "812")
            //When
            do {
                urlRequest = try CharactersApi.getCharacterById(requestValues).asURLRequest()
            } catch {
                apiError = error
            }
            //Then
            XCTAssertNil(apiError)
            XCTAssertNotNil(urlRequest)
            XCTAssertEqual(urlRequest?.url?.absoluteString, DataConstants.baseUrl + DataConstants.charactersContext + id)
            XCTAssertEqual(urlRequest?.httpBody, nil)
            XCTAssertEqual(urlRequest?.allHTTPHeaderFields?.count, 2)
            XCTAssertEqual(urlRequest?.cachePolicy, .returnCacheDataElseLoad)
            XCTAssertEqual(urlRequest?.httpMethod, HTTPMethod.get.rawValue)
        }
    }
}
