//
//  CharacterDetailInfoCellView.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 16/3/23.
//

import SwiftUI

struct CharacterDetailInfoCellView: View {
    let item: CharacterDetailItem
    static let padding: CGFloat = 4
    var body: some View {
        VStack {
            Text(item.getName()).modifier(TitleTextModifier())
                    .padding(.trailing, 10).frame(maxWidth: .infinity, alignment: .leading)
            HStack {
                Text(item.getGenderString()).modifier(GenderTextModifier())
                Text("|").modifier(GenderTextModifier())
                Text(item.getStatusString()).modifier(StatusTextModifier(color: item.getStatusColor()))
            }.frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, CharacterDetailInfoCellView.padding)
            HStack {
                if let originName = item.getOriginName() {
                    VStack (spacing: 0) {
                        Text("_origin").modifier(Title2RegularTextModifier()).frame(maxWidth: .infinity, alignment: .topLeading)
                        Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [1])) .frame(height: 1)
                        Text(originName).modifier(Title2TextModifier()).frame(maxWidth: .infinity, alignment: .topLeading).padding(.top, 4)
                    }
                }
            }.padding([.bottom, .leading, .trailing], CharacterDetailInfoCellView.padding)
            HStack {
                if let locationName = item.getLocationName() {
                    VStack (spacing: 0) {
                        Text("_location").modifier(Title2RegularTextModifier()).frame(maxWidth: .infinity, alignment: .topLeading)
                        Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [1])) .frame(height: 1)
                        Text(locationName).modifier(Title2TextModifier()).frame(maxWidth: .infinity, alignment: .topLeading).padding(.top, 4)
                    }
                }
            }.padding([.bottom, .leading, .trailing], CharacterDetailInfoCellView.padding)
            HStack {
                if let species = item.getSpecies() {
                    VStack (spacing: 0) {
                        Text("_species").modifier(Title2RegularTextModifier()).frame(maxWidth: .infinity, alignment: .topLeading)
                        Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [1])) .frame(height: 1)
                        Text(species).modifier(Title2TextModifier()).frame(maxWidth: .infinity, alignment: .topLeading).padding(.top, 4)
                    }
                }
            }.padding([.leading, .trailing], CharacterDetailInfoCellView.padding)
            HStack {
                if let type = item.getType() {
                    VStack (spacing: 0) {
                        Text("_type").modifier(Title2RegularTextModifier()).frame(maxWidth: .infinity, alignment: .topLeading)
                        Line().stroke(style: StrokeStyle(lineWidth: 1, dash: [1])) .frame(height: 1)
                        Text(type).modifier(Title2TextModifier()).frame(maxWidth: .infinity, alignment: .topLeading).padding(.top, 4)
                    }
                }
            }.padding([.leading, .trailing], CharacterDetailInfoCellView.padding)
        }
    }
}

struct CharacterDetailInfoCellView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailInfoCellView(item: MockCharacterDetailItem.givenCharacterDetailItem2())
    }
}
