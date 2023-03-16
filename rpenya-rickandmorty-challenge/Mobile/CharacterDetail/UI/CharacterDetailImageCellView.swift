//
//  CharacterDetailImageCellView.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 16/3/23.
//

import SwiftUI
import Kingfisher

struct CharacterDetailImageCellView: View {
    let item: CharacterDetailItem
    var body: some View {
        KFImage(URL(string: item.getImageUrl())!).placeholder({ _ in
            ProgressView()
        })
        .resizable()
        .aspectRatio(contentMode: .fit)
        .background {
            RoundedRectangle(cornerRadius: 0.0)
                .fill(Color.green)
        }
        
    }
}

struct CharacterDetailImageCellView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailImageCellView(item: MockCharacterDetailItem.givenCharacterDetailItem1())
    }
}
