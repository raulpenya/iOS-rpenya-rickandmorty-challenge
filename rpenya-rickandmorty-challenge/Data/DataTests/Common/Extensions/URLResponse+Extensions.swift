//
//  URLResponse+Extensions.swift
//  Data
//
//  Created by raulbot on 5/3/23.
//

import Foundation
@testable import Data

extension URLResponse {
    static func getURLResponseSuccess() -> URLResponse {
        return HTTPURLResponse(url: URL(string: DataConstants.baseUrl+DataConstants.getProductsEndpoint)!, statusCode: 200, httpVersion: nil, headerFields: nil)!
    }
    
    static func getURLResponseError() -> URLResponse {
        return HTTPURLResponse(url: URL(string: DataConstants.baseUrl+DataConstants.getProductsEndpoint)!, statusCode: 404, httpVersion: nil, headerFields: nil)!
    }
    
    static func getNoHTTPURLResponseError() -> URLResponse {
        return URLResponse(url: URL(string: DataConstants.baseUrl+DataConstants.getProductsEndpoint)!, mimeType: nil, expectedContentLength: 0, textEncodingName: nil)
    }
}
