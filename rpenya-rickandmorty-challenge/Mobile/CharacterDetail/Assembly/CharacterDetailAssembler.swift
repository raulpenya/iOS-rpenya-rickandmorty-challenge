//
//  CharacterDetailAssembler.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 15/3/23.
//

import Foundation
import Domain
import Data

protocol CharacterDetailAssembler {
    func resolve(character: CharacterFatViewEntity) -> CharacterDetailView
}

extension CharacterDetailAssembler {
    func resolve(character: CharacterFatViewEntity) -> CharacterDetailView {
        return CharacterDetailView(viewModel: resolve(character: character))
    }
    
    func resolve(character: CharacterFatViewEntity) -> CharacterDetailViewModel {
        return CharacterDetailViewModel(getCharacterByIdUseCase: resolve(), character: character)
    }
    
    func resolve() -> GetCharacterById {
        return GetCharacterById(charactersRepository: resolve())
    }
    
    func resolve() -> CharactersRepository {
        return CharactersDataRepository(dataSource: CharactersRemoteDataSource())
    }
}

class CharacterDetailAssemblerInjection: CharacterDetailAssembler {}
