//
//  FlyBehavior.swift
//  Patterns
//
//  Created by Viktor Gubriienko on 29.01.16.
//  Copyright © 2016 Viktor Gubriienko. All rights reserved.
//

import Foundation


protocol FlyBehavior {
    func fly()
}


class FlyWithWings: FlyBehavior {
    
    func fly() {
        print("I'm flying!!")
    }
    
}


class FlyNoWay: FlyBehavior {
    
    func fly() {
        print("I can't fly")
    }
    
}


class FlyRocketPowered: FlyBehavior {
    
    func fly() {
        print("I'm flying with a rocket!")
    }
    
}
