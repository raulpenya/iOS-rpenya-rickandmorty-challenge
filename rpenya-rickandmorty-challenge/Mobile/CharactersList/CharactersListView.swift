//
//  CharactersListView.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 14/3/23.
//

import SwiftUI

struct CharactersListView: View {
    @ObservedObject var viewModel: CharactersListViewModel
    let router: CharactersListRouter
    
    var body: some View {
        NavigationView {
            VStack {
                switch viewModel.state {
                case .idle:
                    Color.clear.onAppear(perform: viewModel.loadData)
                case .loading(let listItems):
                    PlainHGridView(listItems: listItems)
                    Spacer()
                    LoadingView()
                    Spacer()
                case .failed(let error):
                    ErrorView(errorMessage: error.text, action: viewModel.refreshData)
                case .loaded(let listItems):
                    PlainGridPaginatedWithHeaderView(listItems: listItems).refreshable(action: viewModel.refreshData)
                }
            }
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Image("title_image")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }.sheet(isPresented: $viewModel.presentCharacterDetail) {
                if let dependencies = viewModel.transformToCharacterDetailDependencies() {
                    router.destination(dependencies)
                }
            }
        }
    }
}
