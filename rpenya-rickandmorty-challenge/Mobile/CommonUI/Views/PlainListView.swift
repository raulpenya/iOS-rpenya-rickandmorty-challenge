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
//            if let item = anyItem.item as? ProductListItem {
//                ProductCells(item: item).listRowSeparator(.hidden).background {
//                    RoundedRectangle(cornerRadius: 12.0)
//                        .shadow(color: Colors.shadowColor, radius: 5)
//                }
//            } else {
//                Text("PlainListView :: unknown item")
//            }
        }.listStyle(.plain)
    }
}

//struct PlainList_Previews: PreviewProvider {
//    static var previews: some View {
//        PlainListView(listItems: ProductsListModelPreviewProvider.getProductsListItem())
//    }
//}
