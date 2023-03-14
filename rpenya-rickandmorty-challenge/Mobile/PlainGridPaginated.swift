//
//  PlainGridPaginated.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 14/3/23.
//

import SwiftUI

struct PlainGridPaginated: View {
    let listItems: ListItemsPaginated
    
    var body: some View {
        List (listItems.items) { anyItem in
            ForEach(listItems.items) { item in
                Text("PlainGridPaginated :: unknown item")
            }
            
            if listItems.isListFull == false {
                Text("PlainGridPaginated :: bottom reached").onAppear {
                    listItems.fetchData()
                }
            }
        }.listStyle(.plain)
    }
}
