//
//  CharacterListCellView.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 15/3/23.
//

import SwiftUI

//https://www.avanderlee.com/swiftui/downloading-caching-images/

struct CharacterListCellView: View {
    static let width = (UIScreen.main.bounds.width/2)-6
    static let height = width
    static let padding = 8.0
    
    var item: CharactersListItem
    var body: some View {
        AsyncImage(url: URL(string: item.getImageUrl())!)
            .aspectRatio(contentMode: .fill)
            .frame(width: CharacterListCellView.width, height: CharacterListCellView.height, alignment: .center)
            .clipped()
            .overlay(alignment: .bottomLeading) {
                VStackLayout(alignment: .leading, spacing: 0) {
                    Text(item.getName()).modifier(TitleLightTextModifier())
                        .padding([.top,.leading,.trailing], CharacterListCellView.padding)
                    if let locationName = item.getLocationName() {
                        Text(locationName).modifier(SubtitleLightTextModifier())
                            .padding([.bottom,.leading,.trailing], CharacterListCellView.padding)
                    }
                }.frame(width: CharacterListCellView.width, alignment: .leading)
                    .background {
                        LinearGradient(gradient: Gradient(colors: [.black.opacity(0.7), .black.opacity(0)]), startPoint: .bottom, endPoint: .top)
                    }
            }.cornerRadius(8)
    }
}

struct CharacterListCellView_Previews: PreviewProvider {
    static var previews: some View {
        let item = CharactersListItem(character: CharacterThinViewEntity(id: "2", name: "Morty Smith", status: .alive, locationName: "Earth (Replacement Dimension)", imageUrl: "https://rickandmortyapi.com/api/character/avatar/2.jpeg"))
        CharacterListCellView(item: item)
    }
}
