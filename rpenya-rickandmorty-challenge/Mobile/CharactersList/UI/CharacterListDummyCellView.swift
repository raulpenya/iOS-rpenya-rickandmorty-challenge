//
//  CharacterListDummyCellView.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 16/3/23.
//

import SwiftUI

struct CharacterListDummyCellView: View {
    var body: some View {
        VStack {
            LoadingView()
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background {
            RoundedRectangle(cornerRadius: 12.0).fill(.white)
                .shadow(color: Colors.shadowColor, radius: 5)
        }
    }
}

struct CharacterListDummyCellView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterListDummyCellView()
    }
}
