//
//  CharacterDetailView.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 15/3/23.
//

import SwiftUI

struct CharacterDetailView: View {
    @ObservedObject var viewModel: CharacterDetailViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            VStack {
                switch viewModel.state {
                case .idle:
                    Color.clear.onAppear(perform: viewModel.loadData)
                case .loading:
                    LoadingView()
                case .failed(let error):
                    ErrorView(errorMessage: error.text, action: viewModel.refreshData)
                case .loaded(let listItems):
                    PlainListView(listItems: listItems).accessibilityIdentifier(AccessibilityIdentifierConstants.characterDetailList)
                }
            }
        }.onChange(of: viewModel.dismissCharacterDetail) { _ in
            dismiss()
        }
    }
}
