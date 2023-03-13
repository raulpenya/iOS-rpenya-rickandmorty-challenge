//
//  Session.swift
//  Data
//
//  Created by raulbot on 5/3/23.
//

import Foundation
import Combine

protocol Session {
    typealias RequestResponse = URLSession.DataTaskPublisher.Output
    func executeTaskPublisher(for request: URLRequest) -> AnyPublisher<RequestResponse, URLError>
}

extension URLSession: Session {
    func executeTaskPublisher(for request: URLRequest) -> AnyPublisher<RequestResponse, URLError> {
        return dataTaskPublisher(for: request).eraseToAnyPublisher()
    }
}
