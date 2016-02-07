import Foundation


public enum PizzaType {
    case Cheese
    case Pepperoni
    case Clam
    case Veggie
}


public protocol PizzaStore {
    var ingredientFactory: PizzaIngredientFactory { get }
    
    func orderPizza(type: PizzaType) -> Pizza
    func createPizza(type: PizzaType) -> Pizza
}


extension PizzaStore {
    
    public func orderPizza(type: PizzaType) -> Pizza {
        let pizza = createPizza(type)
        
        pizza.prepare()
        pizza.bake()
        pizza.cut()
        pizza.box()
        
        return pizza
    }
    
    private func createPizza(type: PizzaType, styleName: String) -> Pizza {
        switch type {
        case .Cheese:       return CheesePizza(ingredientFactory: ingredientFactory, name: "\(styleName) Cheese Pizza")
        case .Clam:         return ClamPizza(ingredientFactory: ingredientFactory, name: "\(styleName) Style Clam Pizza")
        case .Pepperoni:    return PepperoniPizza(ingredientFactory: ingredientFactory, name: "\(styleName) Style Pepperoni Pizza")
        case .Veggie:       return VeggiePizza(ingredientFactory: ingredientFactory, name: "\(styleName) Style Veggie Pizza")
        }
    }
    
}


public class NYStylePizzaStore: PizzaStore {
    
    public let ingredientFactory: PizzaIngredientFactory = NYPizzaIngredientFactory()

    public func createPizza(type: PizzaType) -> Pizza {
        return createPizza(type, styleName: "NY Style")
    }
    
    public init() {
        print("Pizza store \(self.dynamicType) initialized")
    }
    
}


public class ChicagoStylePizzaStore: PizzaStore {
    
    public let ingredientFactory: PizzaIngredientFactory = ChicagoPizzaIngredientFactory()
    
    public func createPizza(type: PizzaType) -> Pizza {
        return createPizza(type, styleName: "Chicago Style")
    }
    
    public init() {
        print("Pizza store \(self.dynamicType) initialized")
    }
    
}


public class CAStylePizzaStore: PizzaStore {
    
    public let ingredientFactory: PizzaIngredientFactory = CaliforniaPizzaIngredientFactory()
    
    public func createPizza(type: PizzaType) -> Pizza {
        return createPizza(type, styleName: "CA Style")
    }
    
    public init() {
        print("Pizza store \(self.dynamicType) initialized")
    }

}
