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
            .overlay(alignment: .topLeading) {
                HStackLayout {
                    CloseButton(action: item.dismiss)
                }
                .frame(width: UIScreen.main.bounds.width, height: 60, alignment: .leading)
                .background {
                    LinearGradient(gradient: Gradient(colors: [.black.opacity(0), .black.opacity(0.8)]), startPoint: .bottom, endPoint: .top)
                }
            }
            .cornerRadius(8, corners: [.topLeft, .topRight])
        }
    }
}

//struct CharacterDetailImageCellView_Previews: PreviewProvider {
//    static var previews: some View {
//        CharacterDetailImageCellView(item: MockCharacterDetailItem.givenCharacterDetailItem1())
//    }
//}
