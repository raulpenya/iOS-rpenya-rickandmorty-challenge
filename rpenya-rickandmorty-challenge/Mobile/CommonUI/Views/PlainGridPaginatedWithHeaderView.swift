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
    static let listOffset: CGFloat = 55
    
    var body: some View {
        ScrollView {
            PlainVGridPaginatedView(listItems: listItems).padding(.horizontal, PlainGridPaginatedWithHeaderView.cellsPadding).offset(y: PlainGridPaginatedWithHeaderView.listOffset).onAppear { Appearance.setupUIRefreshControlAppearance() }.accessibilityIdentifier(AccessibilityIdentifierConstants.plainVGridPaginatedView)
        }.overlay (alignment: .topLeading) {
            if let listItemsWithHeader = listItems as? ListItemsSectionHeader {
                PlainHGridView(listItems: listItemsWithHeader.sectionHeader).frame(maxWidth: .infinity).frame(alignment: .top).accessibilityIdentifier(AccessibilityIdentifierConstants.plainHGridView)
            }
        }
    }
}

//struct PlainGridPaginated_Previews: PreviewProvider {
//    static var previews: some View {
//        PlainGridPaginatedView(listItems: MockCharactersListItems.givenCharactersListItems())
//    }
//}
