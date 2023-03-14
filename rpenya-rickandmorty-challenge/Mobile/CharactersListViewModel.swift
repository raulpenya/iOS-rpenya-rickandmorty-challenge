//
//  CharactersListViewModel.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 14/3/23.
//

import Foundation
import Domain
import Combine

enum State: Equatable {
    case idle
    case loading
    case failed(ErrorDescription)
    case loaded(ListItems, ButtonItem)
    
    static func == (lhs: State, rhs: State) -> Bool {
        switch (lhs, rhs) {
        case (.idle, .idle), (.loading, .loading):
            return true
        case (.failed(_), .failed(_)), (.loaded(_, _), .loaded(_, _)):
            return true
        default:
            return false
        }
    }
}

class CharactersListViewModel: ObservableObject {
    @Published private(set) var state = State.idle
    
    
}
