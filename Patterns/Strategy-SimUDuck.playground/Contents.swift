//: Playground - noun: a place where people can play

import UIKit


let mallard = MallardDuck()
mallard.performQuack()
mallard.performFly()

let model = ModelDuck()
model.performFly()
model.flyBehavior = FlyRocketPowered()
model.performFly()
