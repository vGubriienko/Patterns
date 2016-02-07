//: Playground - noun: a place where people can play

import UIKit



let NYPizzaStore = NYStylePizzaStore()
let chicagoPizzaStore = ChicagoStylePizzaStore()

let NYCheesePizza = NYPizzaStore.orderPizza(.Cheese)
let chicagoCheesePizza = chicagoPizzaStore.orderPizza(.Cheese)

print("Ethan ordered a \(NYCheesePizza.name)")
print("Joel ordered a \(chicagoCheesePizza.name)")

