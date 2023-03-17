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
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(listItems.items) { anyItem in
                    if let item = anyItem.item as? CharactersListFilterItem {
                        Text(item.filter.text).onTapGesture {
                            item.onTapGesture(item)
                        }
                    } else {
                        Text("PlainListView :: unknown item")
                    }
                }
            }
        }
    }
}

//struct PlainHGridView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlainHGridView()
//    }
//}
