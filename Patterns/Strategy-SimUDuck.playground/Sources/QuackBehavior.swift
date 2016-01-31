//
//  QuackBehavior.swift
//  Patterns
//
//  Created by Viktor Gubriienko on 29.01.16.
//  Copyright © 2016 Viktor Gubriienko. All rights reserved.
//

import Foundation


public protocol QuackBehavior {
    func quack()
}


public class Quack: QuackBehavior {
    
    public init() {}
    
    public func quack() {
        print("Quack")
    }
    
}


public class MuteQuack: QuackBehavior {
    
    public init() {}
    
    public func quack() {
        print("<< Silence >>")
    }
    
}


public class Squeak: QuackBehavior {
    
    public init() {}
    
    public func quack() {
        print("Squeak")
    }
    
}