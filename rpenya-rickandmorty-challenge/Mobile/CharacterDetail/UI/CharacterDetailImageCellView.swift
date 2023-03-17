//
//  CharacterDetailImageCellView.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 16/3/23.
//

import SwiftUI

struct CharacterDetailImageCellView: View {
    let item: CharacterDetailItem
    var body: some View {
        if let item = item as? CharacterDetailImageItem, let url = item.getImageUrl() {
            CharacterImageView(url: url)
        }
    }
}

//struct CharacterDetailImageCellView_Previews: PreviewProvider {
//    static var previews: some View {
//        CharacterDetailImageCellView(item: MockCharacterDetailItem.givenCharacterDetailItem1())
//    }
//}
