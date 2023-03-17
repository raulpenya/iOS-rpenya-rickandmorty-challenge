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
            .overlay(alignment: .topLeading) {
                if let listItems = listItems as? ListItemsDismissable {
                    HStackLayout {
                        CloseButton(action: listItems.dismiss)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: 60, alignment: .leading)
                    .background {
                        LinearGradient(gradient: Gradient(colors: [.black.opacity(0), .black.opacity(0.8)]), startPoint: .bottom, endPoint: .top)
                    }
                }
            }
            .cornerRadius(8, corners: [.topLeft, .topRight])
    }
}

//struct PlainList_Previews: PreviewProvider {
//    static var previews: some View {
//        PlainListView(listItems: MockCharactersListItems.givenCharactersListItems())
//    }
//}
