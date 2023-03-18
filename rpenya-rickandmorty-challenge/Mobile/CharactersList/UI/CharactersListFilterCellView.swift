//
//  CharactersListFilterCellView.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 17/3/23.
//

import SwiftUI

struct CharactersListFilterCellView: View {
    let item: CharactersListFilterItem
    var body: some View {
        if item.filter.isSelected {
            Text(item.getText()).modifier(Title3LightTextModifier()).padding(.all, 6).frame(height: 30).background {
                RoundedRectangle(cornerRadius: 8)
                    .fill(Colors.lightBlue)
            }
        } else {
            Text(item.getText()).modifier(Title3BlueLightTextModifier()).padding(.all, 6).frame(height: 30).background {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Colors.lightBlue, lineWidth: 1)
            }
        }
    }
}
