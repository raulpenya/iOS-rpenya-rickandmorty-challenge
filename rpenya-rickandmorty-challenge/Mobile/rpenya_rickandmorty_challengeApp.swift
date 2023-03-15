//
//  rpenya_rickandmorty_challengeApp.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 13/3/23.
//

import SwiftUI

//https://tanaschita.com/20220404-understanding-the-difference-between-appdelegate-scenedelegate-and-swiftui-app-protocol/

@main
struct rpenya_rickandmorty_challengeApp: App {
    var body: some Scene {
        WindowGroup {
            CharactersListAssemblerInjection().resolve()
        }
    }
}
