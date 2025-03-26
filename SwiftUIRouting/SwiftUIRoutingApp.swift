//
//  SwiftUIRoutingApp.swift
//  SwiftUIRouting
//
//  Created by Yogesh Raj on 26/03/25.
//

import SwiftUI

@main
struct SwiftUIRoutingApp: App {
    @StateObject private var appRoutes: Router<AppRoute> = .init()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appRoutes)
        }
    }
}
