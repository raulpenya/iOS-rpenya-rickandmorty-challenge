//
//  CharactersDataSource.swift
//  Data
//
//  Created by raulbot on 14/3/23.
//

import Foundation
import Domain
import Combine

public protocol CharactersDataSource {
    func getCharactersByPageNumber(_ requestValues: GetCharactersByPageNumberRequestValues) -> AnyPublisher<CharactersPage, Error>
    func getCharacterById(_ requestValues: GetCharacterByIdRequestValues) -> AnyPublisher<Character, Error>
}
