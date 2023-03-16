//
//  View+Extensions.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 16/3/23.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
