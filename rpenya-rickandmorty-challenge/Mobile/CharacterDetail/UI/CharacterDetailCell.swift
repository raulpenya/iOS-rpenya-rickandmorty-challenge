//
//  CharacterDetailCell.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 16/3/23.
//

import SwiftUI

struct CharacterDetailCell: View {
    let item: CharacterDetailItem
    var body: some View {
        switch item.view {
        case .headerImage:
            CharacterDetailImageCellView(item: item).listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        case .headerInfo:
            CharacterDetailHeaderInfoCellView(item: item)
        case .info:
            CharacterDetailInfoCellView(item: item)
        }
    }
}

//struct CharacterDetailCell_Previews: PreviewProvider {
//    static var previews: some View {
//        CharacterDetailCell(item: MockCharacterDetailItem.givenCharacterDetailItem1())
//    }
//}
