//
//  CharacterListCellView.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 15/3/23.
//

import SwiftUI

struct CharacterListCellView: View {
    static let width = (UIScreen.main.bounds.width/2)-6
    static let height = width
    static let padding = 8.0
    let item: CharactersListItem
    
    var body: some View {
        if let url = item.getImageUrl() {
            CharacterImageView(url: url)
                .overlay(alignment: .bottomLeading) {
                    VStackLayout(alignment: .leading, spacing: 0) {
                        Text(item.getName()).modifier(TitleLightTextModifier())
                            .padding([.top,.leading,.trailing], CharacterListCellView.padding)
                        HStack {
                            Text(item.getGenderString()).modifier(SubtitleLightTextModifier())
                            Text("|").modifier(SubtitleLightTextModifier())
                            Text(item.getStatusString()).modifier(StatusTextModifier(color: item.getStatusColor()))
                        }.frame(maxWidth: .infinity, alignment: .leading).padding([.bottom,.leading,.trailing], CharacterListCellView.padding)
                    }.frame(maxWidth: .infinity)
                        .background {
                            LinearGradient(gradient: Gradient(colors: [.black.opacity(0.8), .black.opacity(0)]), startPoint: .bottom, endPoint: .top)
                        }
                }.cornerRadius(8)
        }
    }
}
