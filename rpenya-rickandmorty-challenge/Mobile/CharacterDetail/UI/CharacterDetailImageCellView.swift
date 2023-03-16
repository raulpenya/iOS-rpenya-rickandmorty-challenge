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
        if let item = item as? CharacterDetailImageItem {
            KFImage(URL(string: item.getImageUrl())!).placeholder({ _ in
                ProgressView()
            })
            .resizable()
            .aspectRatio(contentMode: .fit)
            .overlay(alignment: .topLeading) {
                HStackLayout {
                    Button { item.dismiss() } label: { Image("icCloseLight") }
                    .frame(width: 60, height: 60)
                }
                .frame(width: UIScreen.main.bounds.width, height: 60, alignment: .leading)
                .background {
                    LinearGradient(gradient: Gradient(colors: [.black.opacity(0), .black.opacity(0.7)]), startPoint: .bottom, endPoint: .top)
                }
            }
            .cornerRadius(8, corners: [.topLeft, .topRight])
        }
    }
}

struct CharacterDetailImageCellView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailImageCellView(item: MockCharacterDetailItem.givenCharacterDetailItem1())
    }
}
