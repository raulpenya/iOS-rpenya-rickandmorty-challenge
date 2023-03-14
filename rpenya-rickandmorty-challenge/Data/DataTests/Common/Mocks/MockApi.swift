//
//  MockApi.swift
//  Data
//
//  Created by raulbot on 6/3/23.
//

import Foundation
@testable import Data

enum MockApi: Api {
    case getGETRequestWithCacheAndHeaders(Int, Int, String)
    case getPOSTRequest([String])
    case getErrorRequest
    
    var method: HTTPMethod {
        switch self {
        case .getGETRequestWithCacheAndHeaders, .getErrorRequest:
            return .get
        case .getPOSTRequest:
            return .post
        }
    }
    
    var url: String {
        switch self {
        case .getGETRequestWithCacheAndHeaders, .getPOSTRequest:
            return DataConstants.baseUrl + DataConstants.charactersContext
        case .getErrorRequest:
            return ""
        }
    }
    
    var headerParams: [String: Any] {
        switch self {
        case .getGETRequestWithCacheAndHeaders(let start, let count, let sort):
            return ["Start": start, "Count": count, "Sort": sort]
        case .getPOSTRequest, .getErrorRequest:
            return [:]
        }
    }
    
    var bodyParams: Any {
        switch self {
        case .getGETRequestWithCacheAndHeaders, .getErrorRequest:
            return [:]
        case .getPOSTRequest(let ids):
            return ["ids":ids]
        }
    }
    
    var useCache: Bool {
        switch self {
        case .getGETRequestWithCacheAndHeaders:
            return true
        case .getPOSTRequest, .getErrorRequest:
            return false
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        switch self {
        case .getGETRequestWithCacheAndHeaders, .getPOSTRequest, .getErrorRequest:
            return try createURLRequest()
        }
    }
}
