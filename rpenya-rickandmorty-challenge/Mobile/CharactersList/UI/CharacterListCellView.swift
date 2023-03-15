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
    
    var item: CharactersListItem
    var body: some View {
        AsyncImage(url: URL(string: item.getImageUrl())!)
            .aspectRatio(contentMode: .fill)
            .frame(width: CharacterListCellView.width, height: CharacterListCellView.height, alignment: .center)
            .clipped()
            .overlay(alignment: .bottomLeading) {
                Text(item.getName()).modifier(TitleLightTextModifier())
                    .padding(.all, 6)
                    .frame(width: CharacterListCellView.width, alignment: .leading)
                    .background {
                    LinearGradient(gradient: Gradient(colors: [.black.opacity(0.5), .black.opacity(0)]), startPoint: .bottom, endPoint: .top)
                }
            }.cornerRadius(8)
//            .shadow(color: Colors.shadowColor, radius: 5)
//            .background {
//                RoundedRectangle(cornerRadius: 0.0)
//                    .shadow(color: Colors.shadowColor, radius: 5)
//            }
    }
}

struct CharacterListCellView_Previews: PreviewProvider {
    static var previews: some View {
        let item = CharactersListItem(character: CharacterThinViewEntity(id: "2", name: "Morty Smith", status: .alive, imageUrl: "https://rickandmortyapi.com/api/character/avatar/2.jpeg"))
        CharacterListCellView(item: item)
    }
}
