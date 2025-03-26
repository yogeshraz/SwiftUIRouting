//
//  Router.swift
//  SwiftUIRouting
//
//  Created by Yogesh Raj on 26/03/25.
//

import SwiftUI
import Foundation


public final class Router<Routes: Routable>: ObservableObject, RoutableObject {
    
    public typealias Destination = Routes
    @Published public var stack: [Destination] = []
    public init() {}
    
}
