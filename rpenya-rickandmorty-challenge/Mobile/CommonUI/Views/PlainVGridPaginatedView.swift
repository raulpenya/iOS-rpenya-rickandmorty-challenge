//
//  PlainVGridPaginatedView.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 17/3/23.
//

import SwiftUI

struct PlainVGridPaginatedView: View {
    let listItems: ListItems
    let twoColumnGrid = [GridItem(.flexible(), spacing: PlainGridPaginatedWithHeaderView.cellsPadding), GridItem(.flexible(), spacing: PlainGridPaginatedWithHeaderView.cellsPadding)]
    
    var body: some View {
        LazyVGrid(columns: twoColumnGrid, spacing: PlainGridPaginatedWithHeaderView.cellsPadding) {
            ForEach(listItems.items) { anyItem in
                if let item = anyItem.item as? CharactersListItem {
                    CharacterListCellView(item: item).frame(minWidth: 0, maxWidth: .infinity, minHeight: CharacterListCellView.height).onTapGesture {
                        item.onTapGesture(item)
                    }
                } else {
                    Text("PlainListView :: unknown item")
                }
            }
            if let listItems = listItems as? ListItemsPaginated, listItems.isListCompleted == false {
                CharacterListDummyCellView().frame(minWidth: 0, maxWidth: .infinity, minHeight: CharacterListCellView.height)
                CharacterListDummyCellView().frame(minWidth: 0, maxWidth: .infinity, minHeight: CharacterListCellView.height)
                    .onAppear { listItems.didReachListBottomAction() }
            }
        }
    }
}

//struct PlainVGridPaginatedView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlainVGridPaginatedView()
//    }
//}
