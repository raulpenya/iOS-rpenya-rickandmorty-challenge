//
//  PlainHGridView.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 17/3/23.
//

import SwiftUI

struct PlainHGridView: View {
    static let height: CGFloat = 45
    let listItems: ListItems
    
    var body: some View {
        VisualEffectView(effect: UIBlurEffect(style: .systemThickMaterialLight)).frame(height: PlainHGridView.height).overlay {
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
            }.frame(height: PlainHGridView.height).padding(.horizontal, 8).padding([.top, .bottom], 6)
        }.background(
            Color.white.shadow(color: Colors.shadowColor, radius: 10, x: 0, y: 0)
                .mask(Rectangle().padding(.bottom, -20))
        )
    }
}
