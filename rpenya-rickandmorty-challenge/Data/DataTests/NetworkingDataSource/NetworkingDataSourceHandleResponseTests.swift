//
//  NetworkingDataSourceHandleResponseTests.swift
//  DataTests
//
//  Created by raulbot on 5/3/23.
//

import XCTest
@testable import Data

final class NetworkingDataSourceHandleResponseTests: XCTestCase {
    
    let dataSource = MockNetworkingDataSource()
    var errorResponse: Error?
    var dataResponse: Data?
    
    override func setUpWithError() throws {
        errorResponse = nil
        dataResponse = nil
    }
    
    func test_handleResponse_success() {
        //Given
        let data = String.getProductsSuccessResponse().data(using: .utf8)
        let urlResponse = URLResponse.getURLResponseSuccess()
        //When
        do {
            dataResponse = try dataSource.handleResponse(data: data!, response: urlResponse)
        } catch {
            errorResponse = error
        }
        //Then
        XCTAssertNotNil(dataResponse)
        XCTAssertNil(errorResponse)
        XCTAssertEqual(String(decoding: dataResponse!, as: UTF8.self), String.getProductsSuccessResponse())
    }
    
    func test_handleResponse_errorWithData() {
        //Given
        let data = String.getErrorResponse().data(using: .utf8)
        let urlResponse = URLResponse.getURLResponseError()
        //When
        do {
            dataResponse = try dataSource.handleResponse(data: data!, response: urlResponse)
        } catch {
            errorResponse = error
        }
        //Then
        XCTAssertNil(dataResponse)
        XCTAssertNotNil(errorResponse)
        XCTAssertEqual((errorResponse! as NSError).domain.description, String.getErrorResponse())
        XCTAssertEqual((errorResponse! as NSError).code, (urlResponse as! HTTPURLResponse).statusCode)
    }
    
    func test_handleResponse_errorWithoutData() {
        //Given
        let data = String.getEmptyResponse().data(using: .utf8)
        let urlResponse = URLResponse.getURLResponseError()
        //When
        do {
            dataResponse = try dataSource.handleResponse(data: data!, response: urlResponse)
        } catch {
            errorResponse = error
        }
        //Then
        XCTAssertNil(dataResponse)
        XCTAssertNotNil(errorResponse)
        XCTAssertNotEqual((errorResponse! as NSError).domain.description, String.getErrorResponse())
        XCTAssertEqual((errorResponse! as NSError).domain.description, DataSourceErrors.networkingRequestError.localizedDescription)
        XCTAssertEqual((errorResponse! as NSError).code, (urlResponse as! HTTPURLResponse).statusCode)
    }
    
    func test_handleResponse_errorNoHTTPURLResponse() {
        //Given
        let data = String.getEmptyResponse().data(using: .utf8)
        let urlResponse = URLResponse.getNoHTTPURLResponseError()
        //When
        do {
            dataResponse = try dataSource.handleResponse(data: data!, response: urlResponse)
        } catch {
            errorResponse = error
        }
        //Then
        XCTAssertNil(dataResponse)
        XCTAssertNotNil(errorResponse)
        XCTAssertNotEqual((errorResponse! as NSError).domain.description, String.getErrorResponse())
        XCTAssertEqual((errorResponse! as! DataSourceErrors).localizedDescription, DataSourceErrors.castHTTPURLResponseException.localizedDescription)
        XCTAssertEqual((errorResponse! as! DataSourceErrors).code, DataSourceErrors.castHTTPURLResponseException.code)
    }
}
