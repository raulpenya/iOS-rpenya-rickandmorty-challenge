//
//  CharacterDetailInfoCellView.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 16/3/23.
//

import SwiftUI

struct CharacterDetailHeaderInfoCellView: View {
    let item: CharacterDetailItem
    static let padding: CGFloat = 4
    var body: some View {
        if let item = item as? CharacterDetailHeaderInfoItem {
            VStack {
                Text(item.getName()).modifier(TitleTextModifier())
                    .padding(.trailing, 10).frame(maxWidth: .infinity, alignment: .leading)
                HStack {
                    Text(item.getGenderString()).modifier(SubheadlineTextModifier())
                    Text("|").modifier(SubheadlineTextModifier())
                    Text(item.getStatusString()).modifier(StatusTextModifier(color: item.getStatusColor()))
                }.frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, CharacterDetailHeaderInfoCellView.padding)
            }
        }
    }
}
