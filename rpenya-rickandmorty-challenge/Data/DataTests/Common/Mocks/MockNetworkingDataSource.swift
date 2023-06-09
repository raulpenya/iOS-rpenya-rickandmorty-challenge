//
//  MockNetworkingDataSource.swift
//  Data
//
//  Created by raulbot on 5/3/23.
//

import Foundation
@testable import Data

enum DataSourceResponse {
    case success
    case error
}

class MockNetworkingDataSource: NetworkingDataSource {}
