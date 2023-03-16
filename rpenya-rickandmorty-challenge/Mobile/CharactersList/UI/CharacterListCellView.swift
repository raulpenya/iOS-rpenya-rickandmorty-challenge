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
    
    var item: CharactersListItem
    var body: some View {
        //TODO: fix force URL
        CharacterImageView(url: URL(string: item.getImageUrl())!)
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

struct CharacterListCellView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterListCellView(item: MockCharactersListItem.givenCharactersListItem1())
    }
}
