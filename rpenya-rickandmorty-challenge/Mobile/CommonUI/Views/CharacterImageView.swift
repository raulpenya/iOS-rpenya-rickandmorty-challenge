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
            LoadingView()
        })
        .resizable()
        .aspectRatio(contentMode: .fit)
    }
}
