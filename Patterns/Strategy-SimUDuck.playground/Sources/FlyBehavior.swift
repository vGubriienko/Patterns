//
//  FlyBehavior.swift
//  Patterns
//
//  Created by Viktor Gubriienko on 29.01.16.
//  Copyright © 2016 Viktor Gubriienko. All rights reserved.
//

import Foundation


public protocol FlyBehavior {
    func fly()
}


public class FlyWithWings: FlyBehavior {
    
    public init() {}
    
    public func fly() {
        print("I'm flying!!")
    }
    
}


public class FlyNoWay: FlyBehavior {

    public init() {}
    
    public func fly() {
        print("I can't fly")
    }
    
}


public class FlyRocketPowered: FlyBehavior {
    
    public init() {}
    
    public func fly() {
        print("I'm flying with a rocket!")
    }
    
}
