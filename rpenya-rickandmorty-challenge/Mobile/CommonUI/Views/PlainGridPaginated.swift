//
//  PlainGridPaginated.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 14/3/23.
//

import SwiftUI

struct PlainGridPaginated: View {
    let listItems: ListItems
    let twoColumnGrid = [GridItem(.flexible(), spacing: cellsPadding), GridItem(.flexible(), spacing: cellsPadding)]
    private static let cellsPadding: CGFloat = 4
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: twoColumnGrid, spacing: PlainGridPaginated.cellsPadding) {
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
                    Text("PlainGridPaginated :: bottom reached")
                    Text("PlainGridPaginated :: bottom reached").onAppear {
                        listItems.didReachListBottomAction()
                    }
                }
            }.padding(.horizontal, PlainGridPaginated.cellsPadding)
        }
    }
}

struct PlainGridPaginated_Previews: PreviewProvider {
    static var previews: some View {
        PlainGridPaginated(listItems: MockCharactersListItems.givenCharactersListItems())
    }
}
