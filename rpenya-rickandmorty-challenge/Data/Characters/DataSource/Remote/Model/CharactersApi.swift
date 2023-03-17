//
//  CharactersApi.swift
//  Data
//
//  Created by raulbot on 14/3/23.
//

import Foundation
import Domain

enum CharactersApi: Api {
    case getCharactersByPageNumber(GetCharactersByPageNumberRequestValues)
    case getCharacterById(GetCharacterByIdRequestValues)
    
    var method: HTTPMethod {
        switch self {
        case .getCharactersByPageNumber, .getCharacterById:
            return .get
        }
    }
    
    var url: String {
        switch self {
        case .getCharactersByPageNumber(let requestValues):
            var genderQueryParams = ""
            if let filterName = requestValues.filterName {
                genderQueryParams = String(format: "&gender=\(filterName)")
            }
            return DataConstants.baseUrl + DataConstants.charactersContext + String(format: "?page=\(String(requestValues.page))") + genderQueryParams
        case .getCharacterById(let requestValues):
            return DataConstants.baseUrl + DataConstants.charactersContext + requestValues.id
        }
    }
    
    var headerParams: [String: Any] {
        switch self {
        case .getCharactersByPageNumber, .getCharacterById:
            return [:]
        }
    }
    
    var useCache: Bool {
        switch self {
        case .getCharactersByPageNumber, .getCharacterById:
            return true
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        switch self {
        case .getCharactersByPageNumber, .getCharacterById:
            return try createURLRequest()
        }
    }
}
