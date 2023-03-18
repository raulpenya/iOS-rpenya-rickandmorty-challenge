//
//  DataErrors.swift
//  Data
//
//  Created by raulbot on 6/3/23.
//

import Foundation

public enum DataErrors: Int, Error {
    case apiURLException = 900
    public var localizedDescription: String {
        switch self {
        case .apiURLException:
            return "DataErrors :: API url exception"
        }
    }
    public var code: Int { return rawValue }
}
