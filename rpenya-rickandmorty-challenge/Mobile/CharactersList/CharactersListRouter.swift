//
//  CharactersListRouter.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 14/3/23.
//

import Foundation

class CharactersListRouter: Router {
    typealias T = CharacterDetailView
    typealias Q = CharacterDetailDependencies
    
    func destination(_ dependencies: CharacterDetailDependencies) -> CharacterDetailView {
        return CharacterDetailAssemblerInjection().resolve(character: dependencies.character)
    }
}

struct CharacterDetailDependencies: Dependecies {
    let character: CharacterFatViewEntity
}
