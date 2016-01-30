//
//  Duck.swift
//  Patterns
//
//  Created by Viktor Gubriienko on 29.01.16.
//  Copyright © 2016 Viktor Gubriienko. All rights reserved.
//

import Foundation


protocol Duck {
    
    var flyBehavior: FlyBehavior { get set }
    var quackBehavior: QuackBehavior { get set }
    
    func display()
    
    func performFly()
    func performQuack()
    
    func swim()
}


extension Duck {
    
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


class MallardDuck: Duck {
    
    var flyBehavior: FlyBehavior
    var quackBehavior: QuackBehavior
    
    init() {
        flyBehavior = FlyWithWings()
        quackBehavior = Quack()
    }
    
    func display() {
        print("I'm a real mallard duck")
    }
    
}


class ModelDuck: Duck {
    
    var flyBehavior: FlyBehavior
    var quackBehavior: QuackBehavior
    
    init() {
        flyBehavior = FlyNoWay()
        quackBehavior = Quack()
    }
    
    func display() {
        print("I'm a model duck")
    }
    
}

