//
//  PlainGridPaginated.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 14/3/23.
//

import SwiftUI

struct PlainGridPaginated: View {
    let listItems: ListItems
    let twoColumnGrid = [GridItem(.flexible(), spacing: 4), GridItem(.flexible(), spacing: 4)]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: twoColumnGrid, spacing: 4) {
                ForEach(listItems.items) { anyItem in
                    if let item = anyItem.item as? CharactersListItem {
                        CharacterListCellView(item: item).frame(minWidth: 0, maxWidth: .infinity, minHeight: CharacterListCellView.height)
                    } else {
                        Text("PlainListView :: unknown item")
                    }
                }
                if let listItems = listItems as? ListItemsPaginated, listItems.isListCompleted == false {
                    Text("PlainGridPaginated :: bottom reached").onAppear {
                        listItems.didReachListBottomAction()
                    }
                }
            }.padding(.horizontal, 4)
        }
    }
}

//struct PlainGridPaginated_Previews: PreviewProvider {
//    static var previews: some View {
//        PlainGridPaginated()
//    }
//}
