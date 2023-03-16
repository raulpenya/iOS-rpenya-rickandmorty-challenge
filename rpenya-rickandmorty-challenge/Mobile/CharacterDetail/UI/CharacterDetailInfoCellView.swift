//
//  CharacterDetailInfoSubCellView.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 16/3/23.
//

import SwiftUI

struct CharacterDetailInfoCellView: View {
    let item: CharacterDetailItem
    var body: some View {
        if let item = item as? CharacterDetailInfoItem {
            VStack (spacing: 0) {
                Text(item.title).modifier(Title2RegularTextModifier()).frame(maxWidth: .infinity, alignment: .topLeading)
                Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [1])) .frame(height: 1)
                Text(item.info).modifier(Title2TextModifier()).frame(maxWidth: .infinity, alignment: .topLeading).padding(.top, 4)
            }
        }
    }
}

//struct CharacterDetailInfoSubCellView_Previews: PreviewProvider {
//    static var previews: some View {
//        CharacterDetailInfoCellView(item: MockCharacterDetailItem.giveCharacterDetailInfoSubItem1())
//    }
//}
