//
//  PlainListView.swift
//  rpenya-eshop-challenge
//
//  Created by raulbot on 9/3/23.
//

import  SwiftUI

struct PlainListView: View {
    let listItems: ListItems
    
    var body: some View {
        List (listItems.items) { anyItem in
            if let item = anyItem.item as? CharacterDetailItem {
                CharacterDetailCell(item: item).listRowSeparator(.hidden)
            } else {
                Text("PlainListView :: unknown item")
            }
        }.listStyle(.plain)
    }
}

//struct PlainList_Previews: PreviewProvider {
//    static var previews: some View {
//        PlainListView(listItems: MockCharactersListItems.givenCharactersListItems())
//    }
//}
