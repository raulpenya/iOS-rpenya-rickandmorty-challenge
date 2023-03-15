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
                case .loading:
                    ProgressView()
                case .failed(let error):
                    ErrorView(errorMessage: error.text, action: viewModel.refreshData)
                case .loaded(let listItems):
                    PlainGridPaginated(listItems: listItems)
                }
            }
            .navigationTitle(NSLocalizedString("_title", comment: ""))
//            .sheet(isPresented: $viewModel.presentShoppingBasketDetail) {
//                if let dependencies = viewModel.transformToShoppingBasketDetailDependencies() {
//                    router.destination(dependencies)
//                }
//            }
        }
    }
}

struct CharactersListView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersListAssemblerInjection().resolve()
    }
}
