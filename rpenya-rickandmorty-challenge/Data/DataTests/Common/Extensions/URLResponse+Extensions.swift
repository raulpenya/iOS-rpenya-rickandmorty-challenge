//
//  URLResponse+Extensions.swift
//  Data
//
//  Created by raulbot on 5/3/23.
//

import Foundation
@testable import Data

extension URLResponse {
    static let fakeBaseUrl = "www.fake.com/"
    static let fakeEndpoint = "fake/endpoint"
    static func getURLResponseSuccess() -> URLResponse {
        return HTTPURLResponse(url: URL(string: URLResponse.fakeBaseUrl+URLResponse.fakeEndpoint)!, statusCode: 200, httpVersion: nil, headerFields: nil)!
    }
    
    static func getURLResponseError() -> URLResponse {
        return HTTPURLResponse(url: URL(string: URLResponse.fakeBaseUrl+URLResponse.fakeEndpoint)!, statusCode: 404, httpVersion: nil, headerFields: nil)!
    }
    
    static func getNoHTTPURLResponseError() -> URLResponse {
        return URLResponse(url: URL(string: URLResponse.fakeBaseUrl+URLResponse.fakeEndpoint)!, mimeType: nil, expectedContentLength: 0, textEncodingName: nil)
    }
}
