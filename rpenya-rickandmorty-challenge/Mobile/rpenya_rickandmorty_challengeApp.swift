//
//  rpenya_rickandmorty_challengeApp.swift
//  rpenya-rickandmorty-challenge
//
//  Created by raulbot on 13/3/23.
//

import SwiftUI

@main
struct rpenya_rickandmorty_challengeApp: App {
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    var body: some Scene {
        WindowGroup {
            CharactersListAssemblerInjection().resolve()
                .onReceive(NotificationCenter.default.publisher(for: UIApplication.didBecomeActiveNotification)) { _ in
                    let cache = CacheHandler()
                    cache.checkCache()
                }
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        Appearance.setupNavigationBarAppearance()
        let cache = CacheHandler()
        cache.setURLCacheLimits()
        return true
    }
}
