//
//  CloseButton.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 16/3/23.
//

import SwiftUI

struct CloseButton: View {
    let action: () -> Void
    var body: some View {
        Button { action() } label: { Image("icCloseLight") }
        .frame(width: 60, height: 60)
    }
}
