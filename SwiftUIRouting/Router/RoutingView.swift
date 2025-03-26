//
//  RoutingView.swift
//  SwiftUIRouting
//
//  Created by Yogesh Raj on 26/03/25.
//

import SwiftUI

struct RoutingView<Root: View,Routes: Routable>: View {
    
    @Binding private var routes: [Routes]
    private let root: () -> Root
    
    public init(
        stack: Binding<[Routes]>,
        @ViewBuilder root: @escaping () -> Root
    ){
        self._routes = stack
        self.root = root
    }
    
    var body: some View {
        NavigationStack(path: $routes) {
            root()
                .navigationDestination(for: Routes.self) { view in
                    view.body
            }
        }
    }
}
