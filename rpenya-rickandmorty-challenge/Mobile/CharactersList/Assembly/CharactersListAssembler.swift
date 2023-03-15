//
//  CharactersListAssembler.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 14/3/23.
//

import Foundation
import Domain
import Data

protocol CharactersListAssembler {
    func resolve() -> CharactersListView
}

extension CharactersListAssembler {
    func resolve() -> CharactersListView {
        return CharactersListView(viewModel: CharactersListViewModel(getCharactersByPageNumberUseCase: resolve()), router: resolve())
    }
    
    func resolve() -> CharactersListRouter {
        return CharactersListRouter()
    }
    
    func resolve() -> GetCharactersByPageNumber {
        return GetCharactersByPageNumber(charactersRepository: resolve())
    }
    
    func resolve() -> CharactersRepository {
        return CharactersDataRepository(dataSource: CharactersRemoteDataSource())
    }
}

class CharactersListAssemblerInjection: CharactersListAssembler {}
