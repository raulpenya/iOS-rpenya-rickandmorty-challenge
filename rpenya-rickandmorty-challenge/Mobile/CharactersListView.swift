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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CharactersListView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersListAssemblerInjection().resolve()
    }
}
