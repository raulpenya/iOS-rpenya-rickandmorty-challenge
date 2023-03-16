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
    @Published private(set) var state = ViewModelState.idle
    @Published var dismissCharacterDetail: Bool = false
    let getCharacterByIdUseCase: GetCharacterById
    var currentCharacter: CharacterFatViewEntity
    var cancellableSet: Set<AnyCancellable> = []
    
    init(getCharacterByIdUseCase: GetCharacterById, character: CharacterFatViewEntity) {
        self.getCharacterByIdUseCase = getCharacterByIdUseCase
        self.currentCharacter = character
    }
    
    func loadData() {
        updateView(with: currentCharacter)
        getCharacter(with: currentCharacter.id)
    }
    
    @Sendable func refreshData() {
        loadData()
    }
    
    func dismissButtonPressed() {
        dismissCharacterDetail = true
    }
}

extension CharacterDetailViewModel {
    func getCharacter(with id: String) {
        getCharacterByIdUseCase.execute(GetCharacterByIdRequestValues(id: id)).receive(on: RunLoop.main).sink { [weak self] completion in
            switch completion {
            case .failure(let error):
                print(error.localizedDescription)
                self?.receiveError(error)
            case .finished:
                print("CharacterDetailViewModel :: getCharacter :: publisher finished")
            }
        } receiveValue: { [weak self] result in
            print("CharacterDetailViewModel :: getCharacter :: result :: \(result)")
            self?.receiveResult(result)
        }.store(in: &cancellableSet)
    }
    
    func receiveResult(_ result: Character) {
        updateView(with: result.transformToUIharacterFat())
    }
    
    func receiveError(_ error: Error) {
        let error = error.transformToErrorDescription()
        state = .failed(error)
    }
    
    func updateView(with character: CharacterFatViewEntity) {
        currentCharacter = character
        state = .loaded(character.transformToCharacterDetailItems(dismiss: dismissButtonPressed))
    }
}
