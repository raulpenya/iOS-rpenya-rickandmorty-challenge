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
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func applicationWillEnterForeground(_ application: UIApplication) {
        //Foreground
        print("applicationWillEnterForeground")
        let cache = CacheHandler()
        cache.setURLCacheLimits()
        cache.checkCache()
    }
}
