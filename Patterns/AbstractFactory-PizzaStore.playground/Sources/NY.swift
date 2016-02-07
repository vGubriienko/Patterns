import Foundation


public class NYPizzaIngredientFactory: PizzaIngredientFactory {
    
    public func createDough() -> Dough {
        return ThinCrustDough()
    }
    
    public func createSauce() -> Sauce {
        return MarinaraSauce()
    }
    
    public func createCheese() -> Cheese {
        return ReggianoCheese()
    }
    
    public func createVeggies() -> [Veggies] {
        return [Garlic(), Onion(), Mushroom(), RedPepper()]
    }
    
    public func createPepperoni() -> Pepperoni {
        return SlicedPepperoni()
    }
    
    public func createClam() -> Clams {
        return FreshClams()
    }
    
    public init() {
        
    }
    
}
