//
//  CharacterDetailViewModel.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 15/3/23.
//

import Foundation
import Domain
import Combine

class CharacterDetailViewModel: ObservableObject {
    @Published private(set) var state = State.idle
    let getCharacterByIdUseCase: GetCharacterById
    let character: CharacterFatViewEntity
    
    init(getCharacterByIdUseCase: GetCharacterById, character: CharacterFatViewEntity) {
        self.getCharacterByIdUseCase = getCharacterByIdUseCase
        self.character = character
    }
    
    func loadData() {
        print(character)
    }
}
