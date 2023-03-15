//
//  PlainGridPaginated.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 14/3/23.
//

import SwiftUI

struct PlainGridPaginated: View {
    var twoColumnGrid = [GridItem(.flexible(), spacing: 0), GridItem(.flexible(), spacing: 0)]
    var symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
    var colors: [Color] = [.yellow, .purple, .green]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: twoColumnGrid, spacing: 0) {
                ForEach((0...99), id: \.self) {
                    Image(systemName: symbols[$0 % symbols.count])
                        .font(.system(size: 30))
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: UIScreen.main.bounds.width/2)
                        .background(colors[$0 % colors.count])
                }
//                if listItems.isListFull == false {
                    Text("PlainGridPaginated :: bottom reached").onAppear {
                        print("PlainGridPaginated :: bottom reached")
                    }
//                }
            }
        }
    }
}

struct PlainGridPaginated_Previews: PreviewProvider {
    static var previews: some View {
        PlainGridPaginated()
    }
}
