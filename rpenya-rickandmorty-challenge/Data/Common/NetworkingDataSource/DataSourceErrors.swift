//
//  DataSourceErrors.swift
//  Data
//
//  Created by raulbot on 24/2/23.
//

import Foundation

public enum DataSourceErrors: Int, Error {
    case networkingRequestError = -1
    case instanceException = 800
    case castHTTPURLResponseException = 801
    case requestException = 802
    case parametersException = 803
    public var localizedDescription: String {
        switch self {
        case .networkingRequestError:
            return "DataSourceErrors :: Network request error"
        case .instanceException:
            return "DataSourceErrors :: Instance exception"
        case .castHTTPURLResponseException:
            return "DataSourceErrors :: Casting HTTPURLResponse exception"
        case .requestException:
            return "DataSourceErrors :: URLRequest exception"
        case .parametersException:
            return "DataSourceErrors :: Parameters exception"
        }
    }
    public var code: Int { return rawValue }
}
