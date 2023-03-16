//
//  CharacterImageView.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 16/3/23.
//

import SwiftUI
import Kingfisher

struct CharacterImageView: View {
    let url: URL
    var body: some View {
        KFImage(url).placeholder({ _ in
            ProgressView()
        })
        .resizable()
        .aspectRatio(contentMode: .fit)
    }
}

struct CharacterImageView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterImageView(url: URL(string: MockCharacterFatViewEntity.imageUrl1)!)
    }
}
