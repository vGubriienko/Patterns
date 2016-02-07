import Foundation


public protocol PizzaIngredientFactory {
    func createDough() -> Dough
    func createSauce() -> Sauce
    func createCheese() -> Cheese
    func createVeggies() -> [Veggies]
    func createPepperoni() -> Pepperoni
    func createClam() -> Clams
}
