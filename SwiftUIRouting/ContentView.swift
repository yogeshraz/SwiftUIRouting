//
//  ContentView.swift
//  SwiftUIRouting
//
//  Created by Yogesh Raj on 26/03/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var router: Router<AppRoute>
    var body: some View {
        RoutingView(stack: $router.stack) {
            DestinationView()
        }
    }
}

//#Preview {
//    ContentView()
//}
