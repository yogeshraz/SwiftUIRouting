//
//  DestinationView.swift
//  SwiftUIRouting
//
//  Created by Yogesh Raj on 26/03/25.
//

import SwiftUI

struct DestinationView: View {
    @EnvironmentObject var router: Router<AppRoute>
    var body: some View {
        VStack(spacing: 50) {
            Button("Destination 1") {
                router.push(destination: .destination1)
            }
        }
    }
}

struct DestinationView1: View {
    @EnvironmentObject var router: Router<AppRoute>
    var body: some View {
        VStack(spacing: 50) {
            Button("Destination 2") {
                router.push(destination: .destination2)
            }
            
            Button("Destination 3") {
                router.push(destination: [.destination2, .destination3])
            }
            
            Button("Pop") {
                router.pop()
            }
        }
    }
}

struct DestinationView2: View {
    var navigationTitle = ""
    @EnvironmentObject var router: Router<AppRoute>
    var body: some View {
        VStack(spacing: 50) {
            Text(navigationTitle)
            Button("Destination 3") {
                router.push(destination: .destination3)
            }
            
            Button("Pop") {
                router.pop()
            }
            
            Button("Pop At index") {
                router.pop(atIndex: 2)
            }
        }
    }
}

struct DestinationView3: View {
    @EnvironmentObject var router: Router<AppRoute>
    var body: some View {
        VStack(spacing: 50) {
            Button("Root") {
                router.popToRoot()
            }
            
            Button("Pop") {
                router.pop()
            }
            
            Button("Pop at index") {
                router.pop(atIndex: 3)
            }
        }
    }
}

//#Preview {
//    DestinationView()
//}
