//
//  Appearance.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 17/3/23.
//

import SwiftUI

struct Appearance {
    static func setupNavigationBarAppearance() {
        let appearance = UINavigationBarAppearance()
        appearance.shadowColor = .clear
        appearance.backgroundEffect = UIBlurEffect(style: .systemThickMaterialLight)
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    static func setupUIRefreshControlAppearance() {
        UIRefreshControl.appearance().bounds = CGRect(x: UIRefreshControl.appearance().bounds.origin.x, y: -45, width: UIRefreshControl.appearance().bounds.size.width, height: UIRefreshControl.appearance().bounds.size.height)
    }
}
