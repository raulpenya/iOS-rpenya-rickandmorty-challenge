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
    @Environment(\.scenePhase) private var scenePhase
    var body: some Scene {
        WindowGroup {
            CharactersListAssemblerInjection().resolve()
        }
        .onChange(of: scenePhase) { (newScenePhase) in
            switch newScenePhase {
            case .active:
                print("rpenya_rickandmorty_challengeApp :: active")
            case .inactive:
                print("rpenya_rickandmorty_challengeApp :: inactive")
                let cache = CacheHandler()
                cache.setURLCacheLimits()
                cache.cacheCheck()
            case .background:
                print("rpenya_rickandmorty_challengeApp :: background")
            @unknown default:
                break
            }
        }
    }
}
