//
//  NetworkingDataSource.swift
//  Data
//
//  Created by raulbot on 6/2/23.
//

import Foundation
import Combine

protocol NetworkingDataSource: AnyObject {
    func request<T, Q>(with session: Session, resource: Resource<T, Q>?) -> AnyPublisher<Q, Error>
}

extension NetworkingDataSource {
    func request<T, Q>(with session: Session = URLSession.shared, resource: Resource<T, Q>?) -> AnyPublisher<Q, Error> {
        guard let resource = resource else {
            return Fail(error: DataSourceErrors.requestException).eraseToAnyPublisher()
        }
        return session.executeTaskPublisher(for: resource.request).tryMap { [weak self] data, response in
            guard let strongSelf = self else {
                throw  DataSourceErrors.instanceException
            }
            return try strongSelf.handleResponse(data: data, response: response)
        }.decode(type: T.self, decoder: JSONDecoder()).compactMap {
            resource.transform($0)
            
        }.eraseToAnyPublisher()
    }
    
    func handleResponse(data: Data, response: URLResponse) throws -> Data {
        guard let urlResponse = response as? HTTPURLResponse else {
            throw DataSourceErrors.castHTTPURLResponseException
        }
        if (200...299) ~= urlResponse.statusCode {
            return data
        } else {
            let str = String(decoding: data, as: UTF8.self)
            if !str.isEmpty {
                throw NSError(domain: str, code: urlResponse.statusCode)
            } else {
                throw NSError(domain: DataSourceErrors.networkingRequestError.localizedDescription, code: urlResponse.statusCode)
            }
        }
    }
}
