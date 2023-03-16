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
                    PlainListView(listItems: listItems)//.clipped().edgesIgnoringSafeArea([.top, .bottom])
                }
            }
        }.onChange(of: viewModel.dismissCharacterDetail) { _ in
            dismiss()
        }
    }
}

struct CharacterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let character = CharacterFatViewEntity(id: "123", name: "Morty Smith", status: .alive, species: "", type: "", gender: .male, originName: "", locationName: "", imageUrl: "https://rickandmortyapi.com/api/character/avatar/2.jpeg")
        CharacterDetailAssemblerInjection().resolve(character: character)
    }
}
