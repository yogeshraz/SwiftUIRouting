//
//  AppRoute.swift
//  SwiftUIRouting
//
//  Created by Yogesh Raj on 26/03/25.
//

import SwiftUI

enum AppRoute: Routable {
    
    case destination
    case destination1
    case destination2
    case destination3
    
    var body: some View {
        switch self {
        case .destination:
            DestinationView()
        case .destination1:
            DestinationView1()
        case .destination2:
            DestinationView2()
        case .destination3:
            DestinationView3()
        }
    }
}

