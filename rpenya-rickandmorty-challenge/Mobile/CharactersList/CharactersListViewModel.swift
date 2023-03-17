//
//  CharactersListViewModel.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 14/3/23.
//

import Foundation
import Domain
import Combine

enum ViewModelState: Equatable {
    case idle
    case loading
    case failed(ErrorDescription)
    case loaded(ListItems)
    
    static func == (lhs: ViewModelState, rhs: ViewModelState) -> Bool {
        switch (lhs, rhs) {
        case (.idle, .idle), (.loading, .loading):
            return true
        case (.failed(_), .failed(_)), (.loaded(_), .loaded(_)):
            return true
        default:
            return false
        }
    }
}

class CharactersListViewModel: ObservableObject {
    @Published private(set) var state = ViewModelState.idle
    @Published var presentCharacterDetail: Bool = false
    let getCharactersByPageNumberUseCase: GetCharactersByPageNumber
    var cancellableSet: Set<AnyCancellable> = []
    var filters: FiltersViewEntity = FiltersViewEntity.getFilters()
    var currentCharacters: CharactersPagesViewEntity = CharactersPagesViewEntity()
    var selectedCharacter: CharacterThinViewEntity? = nil
    
    init(getCharactersByPageNumberUseCase: GetCharactersByPageNumber) {
        self.getCharactersByPageNumberUseCase = getCharactersByPageNumberUseCase
    }
    
    func loadData() {
        getCharactersInitialPagePage()
    }
    
    func didReachListBottomAction() {
        if let nextPage = currentCharacters.currentPage.nextPage {
            getCharactersPage(with: nextPage)
        }
    }
    
    @Sendable func refreshData() {
        currentCharacters = CharactersPagesViewEntity()
        getCharactersInitialPagePage()
    }
    
    func didSelectItem(_ item: ListItemSelectable) {
        if let item = item as? CharactersListItem {
            selectedCharacter = item.character
            presentCharacterDetail = true
        } else if let item = item as? CharactersListFilterItem {
            print(item)
        }
    }
    
    func getCharactersInitialPagePage() {
        state = .loading
        getCharactersPage(with: 1)
    }
    
    func getCharactersPage(with page: Int) {
        getCharactersByPageNumberUseCase.execute(GetCharactersByPageNumberRequestValues(page: page)).receive(on: RunLoop.main).sink { [weak self] completion in
            switch completion {
            case .failure(let error):
                print(error.localizedDescription)
                self?.receiveError(error)
            case .finished:
                print("CharactersListViewModel :: getCharactersPage :: publisher finished")
            }
        } receiveValue: { [weak self] result in
            print("CharactersListViewModel :: getCharactersPage :: result :: \(result)")
            self?.receiveResult(result)
        }.store(in: &cancellableSet)
    }
    
    func receiveResult(_ result: CharactersPage) {
        updateView(with: currentCharacters.add(newPage: result))
    }
    
    func receiveError(_ error: Error) {
        let error = error.transformToErrorDescription()
        state = .failed(error)
    }
    
    func updateView(with charactersPages: CharactersPagesViewEntity) {
        currentCharacters = charactersPages
        state = .loaded(charactersPages.transformToListItems(filters: filters, didReachListBottomAction: didReachListBottomAction, onTapGesture: didSelectItem))
    }
}

extension CharactersListViewModel {
    func transformToCharacterDetailDependencies() -> CharacterDetailDependencies? {
        guard let selectedCharacter = selectedCharacter else { return nil }
        return CharacterDetailDependencies(character: selectedCharacter.transformToCharacterFatViewEntity())
    }
}
