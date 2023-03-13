//
//  Resource.swift
//  Data
//
//  Created by raulbot on 4/3/23.
//

import Foundation

struct Resource<T: Decodable, Q> {
    let request: URLRequest
    let transform: (T) -> Q
}
