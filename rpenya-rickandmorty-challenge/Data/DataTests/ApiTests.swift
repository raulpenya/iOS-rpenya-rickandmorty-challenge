//
//  ApiTests.swift
//  rpenya-eshop-challengeTests
//
//  Created by raulbot on 6/3/23.
//

import XCTest
@testable import Data

final class ApiTests: XCTestCase {
    
    var urlRequest: URLRequest?
    var apiError: Error?
    
    override func setUpWithError() throws {
        urlRequest = nil
        apiError = nil
    }

    func test_createURLRequest_GET_success() {
        //Given
        let api = MockApi.getGETRequestWithCacheAndHeaders(0, 20, "-PublicationStartDate")
        //When
        do {
            urlRequest = try api.asURLRequest()
        } catch {
            apiError = error
        }
        let urlRequest = try? api.asURLRequest()
        //Then
        XCTAssertNil(apiError)
        XCTAssertNotNil(urlRequest)
        XCTAssertNotNil(urlRequest?.url?.absoluteString.isEmpty)
        XCTAssertNil(urlRequest?.httpBody)
        XCTAssertEqual(urlRequest?.allHTTPHeaderFields?.count, 5)
        XCTAssertEqual(urlRequest?.cachePolicy, .returnCacheDataElseLoad)
        XCTAssertEqual(urlRequest?.httpMethod, HTTPMethod.get.rawValue)
    }
    
    func test_createURLRequest_POST_success() {
        //Given
        let api = MockApi.getPOSTRequest(["1","2","3"])
        //When
        do {
            urlRequest = try api.asURLRequest()
        } catch {
            apiError = error
        }
        //Then
        XCTAssertNil(apiError)
        XCTAssertNotNil(urlRequest)
        XCTAssertNotNil(urlRequest?.url?.absoluteString.isEmpty)
        XCTAssertNil(urlRequest?.httpBody)
        XCTAssertEqual(urlRequest?.allHTTPHeaderFields?.count, 2)
        XCTAssertEqual(urlRequest?.cachePolicy, .useProtocolCachePolicy)
        XCTAssertEqual(urlRequest?.httpMethod, HTTPMethod.post.rawValue)
    }
    
    func test_createURLRequest_urlError() {
        //Given
        let api = MockApi.getErrorRequest
        //When
        do {
            urlRequest = try api.asURLRequest()
        } catch {
            apiError = error
        }
        //Then
        XCTAssertNotNil(apiError)
        XCTAssertEqual((apiError! as! DataErrors).localizedDescription, DataErrors.apiURLException.localizedDescription)
        XCTAssertEqual((apiError! as! DataErrors).code, DataErrors.apiURLException.code)
        XCTAssertNil(urlRequest)
    }
}
