//
//  Api.swift
//  Data
//
//  Created by raulbot on 4/3/23.
//

import Foundation

protocol Api {
    var method: HTTPMethod { get }
    var url: String { get }
    var headerParams: [String: Any] { get }
    var useCache: Bool { get }
    func asURLRequest() throws -> URLRequest
}

extension Api {
    func createURLRequest() throws -> URLRequest {
        guard let url = URL(string: url) else {
            throw DataErrors.apiURLException
        }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method.rawValue
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.setValue("application/json", forHTTPHeaderField: "Accept")
        if useCache { urlRequest.cachePolicy = .returnCacheDataElseLoad }
        
        headerParams.forEach { param in
            urlRequest.setValue("\(param.value)", forHTTPHeaderField: param.key)
        }
        return urlRequest
    }
}
