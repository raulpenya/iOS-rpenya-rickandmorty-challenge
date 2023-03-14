//
//  CharactersRepository.swift
//  Domain
//
//  Created by raulbot on 14/3/23.
//

import Foundation
import Combine

public protocol CharactersRepository {
    func getCharactersByPageNumber(_ requestValues: GetCharactersByPageNumberRequestValues) -> AnyPublisher<CharactersPage, Error>
    func getCharacterById(_ requestValues: GetCharacterByIdRequestValues) -> AnyPublisher<Character, Error>
}
