//
//  QuackBehavior.swift
//  Patterns
//
//  Created by Viktor Gubriienko on 29.01.16.
//  Copyright © 2016 Viktor Gubriienko. All rights reserved.
//

import Foundation


protocol QuackBehavior {
    func quack()
}


class Quack: QuackBehavior {
    
    func quack() {
        print("Quack")
    }
    
}


class MuteQuack: QuackBehavior {
    
    func quack() {
        print("<< Silence >>")
    }
    
}


class Squeak: QuackBehavior {
    
    func quack() {
        print("Squeak")
    }
    
}