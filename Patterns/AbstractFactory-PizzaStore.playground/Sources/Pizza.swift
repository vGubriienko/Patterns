import Foundation


public protocol Pizza: class {
    var name: String { get }
    var dough: Dough? { get }
    var sauce: Sauce? { get }
    var veggies: [Veggies]? { get }
    var cheese: Cheese? { get }
    var pepperoni: Pepperoni? { get }
    var clam: Clams? { get }
    
    func prepare()
    func bake()
    func cut()
    func box()
}


extension Pizza {
    
    public func bake() {
        print("Bake for 25 mins at 350")
    }
    
    public func cut() {
        print("Cutting the pizza into diagonal slices")
    }
    
    public func box() {
        print("Place pizza in official PizzaStore box")
    }
    
}


public class CheesePizza: Pizza {
    
    public let name: String
    public var dough: Dough?
    public var sauce: Sauce?
    public var veggies: [Veggies]?
    public var cheese: Cheese?
    public var pepperoni: Pepperoni?
    public var clam: Clams?

    private let ingredientFactory: PizzaIngredientFactory
    
    public init(ingredientFactory: PizzaIngredientFactory, name: String) {
        self.ingredientFactory = ingredientFactory
        self.name = name
        prepare()
    }
    
    public func prepare() {
        print("Preparing \(name)")
        dough = ingredientFactory.createDough()
        sauce = ingredientFactory.createSauce()
        cheese = ingredientFactory.createCheese()
    }
    
}


public class ClamPizza: Pizza {
    
    public let name: String
    public var dough: Dough?
    public var sauce: Sauce?
    public var veggies: [Veggies]?
    public var cheese: Cheese?
    public var pepperoni: Pepperoni?
    public var clam: Clams?
    
    private let ingredientFactory: PizzaIngredientFactory
    
    public init(ingredientFactory: PizzaIngredientFactory, name: String) {
        self.ingredientFactory = ingredientFactory
        self.name = name
        prepare()
    }
    
    public func prepare() {
        print("Preparing \(name)")
        dough = ingredientFactory.createDough()
        sauce = ingredientFactory.createSauce()
        cheese = ingredientFactory.createCheese()
        clam = ingredientFactory.createClam()
    }
    
}


public class VeggiePizza: Pizza {
    
    public let name: String
    public var dough: Dough?
    public var sauce: Sauce?
    public var veggies: [Veggies]?
    public var cheese: Cheese?
    public var pepperoni: Pepperoni?
    public var clam: Clams?
    
    private let ingredientFactory: PizzaIngredientFactory
    
    public init(ingredientFactory: PizzaIngredientFactory, name: String) {
        self.ingredientFactory = ingredientFactory
        self.name = name
        prepare()
    }
    
    public func prepare() {
        print("Preparing \(name)")
        dough = ingredientFactory.createDough()
        sauce = ingredientFactory.createSauce()
        cheese = ingredientFactory.createCheese()
        veggies = ingredientFactory.createVeggies()
    }
    
}


public class PepperoniPizza: Pizza {
    
    public let name: String
    public var dough: Dough?
    public var sauce: Sauce?
    public var veggies: [Veggies]?
    public var cheese: Cheese?
    public var pepperoni: Pepperoni?
    public var clam: Clams?
    
    private let ingredientFactory: PizzaIngredientFactory
    
    public init(ingredientFactory: PizzaIngredientFactory, name: String) {
        self.ingredientFactory = ingredientFactory
        self.name = name
        prepare()
    }
    
    public func prepare() {
        print("Preparing \(name)")
        dough = ingredientFactory.createDough()
        sauce = ingredientFactory.createSauce()
        cheese = ingredientFactory.createCheese()
        pepperoni = ingredientFactory.createPepperoni()
    }
    
}
