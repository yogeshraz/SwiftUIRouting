//
//  Routable.swift
//  SwiftUIRouting
//
//  Created by Yogesh Raj on 26/03/25.
//

import SwiftUI


public typealias Routable = View & Hashable
public protocol RoutableObject: AnyObject {
    
    associatedtype Destination: Routable
    
    var stack: [Destination] {get set}
    
    func push(destination: Destination)
    func push(destination: [Destination])
    
    func pop()
    func pop(atIndex: Int)
    func popToRoot()
}

extension RoutableObject {
    
    public func push(destination: Destination) {
        stack.append(destination)
    }
    
    public func push(destination: [Destination]) {
        stack += destination
    }
    
    public func pop() {
        if stack.count == 0 { return }
        stack.removeLast()
    }
    
    public func pop(atIndex: Int) {
        if stack.count < atIndex { return }
        stack.removeLast(atIndex)
    }
    
    public func popToRoot() {
        stack.removeLast(stack.count)
    }
}
