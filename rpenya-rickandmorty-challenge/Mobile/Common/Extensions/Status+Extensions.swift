//
//  Status+Extensions.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 16/3/23.
//

import SwiftUI
import Domain

extension Status {
    func getColor() -> Color {
        switch self {
        case .alive:
            return Colors.statusAlive
        case .dead:
            return Colors.statusDead
        case .unknown:
            return Colors.statusUnknown
        case .none:
            return Colors.textColor
        }
    }
}
