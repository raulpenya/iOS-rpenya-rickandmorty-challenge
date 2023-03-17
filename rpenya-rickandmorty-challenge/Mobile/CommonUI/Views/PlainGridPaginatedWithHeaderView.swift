//
//  PlainGridPaginatedWithHeaderView.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 14/3/23.
//

import SwiftUI

struct PlainGridPaginatedWithHeaderView: View {
    let listItems: ListItems
    static let cellsPadding: CGFloat = 4
    
    var body: some View {
        ScrollView {
            if let listItemsWithHeader = listItems as? ListItemsSectionHeader {
                PlainHGridView(listItems: listItemsWithHeader.sectionHeader).frame(height: 40).padding(.horizontal, 8).padding(.top, 8)
            }
            PlainVGridPaginatedView(listItems: listItems).padding(.horizontal, PlainGridPaginatedWithHeaderView.cellsPadding)
        }
    }
}

//struct PlainGridPaginated_Previews: PreviewProvider {
//    static var previews: some View {
//        PlainGridPaginatedView(listItems: MockCharactersListItems.givenCharactersListItems())
//    }
//}
