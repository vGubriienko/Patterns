//
//  Duck.swift
//  Patterns
//
//  Created by Viktor Gubriienko on 29.01.16.
//  Copyright © 2016 Viktor Gubriienko. All rights reserved.
//

import Foundation


public protocol Duck {
    
    var flyBehavior: FlyBehavior { get set }
    var quackBehavior: QuackBehavior { get set }
    
    func display()
    
    func performFly()
    func performQuack()
    
    func swim()
}


public extension Duck {
    
    func performFly() {
        flyBehavior.fly()
    }
    
    func performQuack() {
        quackBehavior.quack()
    }
    
    func swim() {
        print("All ducks float, even decoys!")
    }
    
}


public class MallardDuck: Duck {
    
    public var flyBehavior: FlyBehavior
    public var quackBehavior: QuackBehavior
    
    public init() {
        flyBehavior = FlyWithWings()
        quackBehavior = Quack()
    }
    
    public func display() {
        print("I'm a real mallard duck")
    }
    
}


public class ModelDuck: Duck {
    
    public var flyBehavior: FlyBehavior
    public var quackBehavior: QuackBehavior
    
    public init() {
        flyBehavior = FlyNoWay()
        quackBehavior = Quack()
    }
    
    public func display() {
        print("I'm a model duck")
    }
    
}

