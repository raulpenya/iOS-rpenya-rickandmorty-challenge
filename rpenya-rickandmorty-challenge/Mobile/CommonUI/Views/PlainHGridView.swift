//
//  PlainHGridView.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 17/3/23.
//

import SwiftUI

struct PlainHGridView: View {
    let listItems: ListItems
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(listItems.items) { anyItem in
                    if let item = anyItem.item as? CharactersListFilterItem {
                        CharactersListFilterCellView(item: item).onTapGesture {
                            item.onTapGesture(item)
                        }
                    } else {
                        Text("PlainListView :: unknown item")
                    }
                }
            }
        }.frame(height: 40).padding(.horizontal, 8).padding(.top, 8)
    }
}

//struct PlainHGridView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlainHGridView()
//    }
//}
