//: Playground - noun: a place where people can play

import UIKit


let beverage: Beverage = Espresso()

print("\(beverage.description) $\(beverage.cost)")


var beverage2: Beverage = DarkRoast()
beverage2 = Mocha(beverage: beverage2)
beverage2 = Mocha(beverage: beverage2)
beverage2 = Whip(beverage: beverage2)

print("\(beverage2.description) $\(beverage2.cost)")

var beverage3: Beverage = HouseBlend()
beverage3 = Soy(beverage: beverage3)
beverage3 = Mocha(beverage: beverage3)
beverage3 = Whip(beverage: beverage3)

print("\(beverage3.description) $\(beverage3.cost)")
