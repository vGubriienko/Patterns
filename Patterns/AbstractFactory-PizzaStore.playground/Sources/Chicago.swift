import Foundation


public class ChicagoPizzaIngredientFactory: PizzaIngredientFactory {
    
    public func createDough() -> Dough {
        return ThickCrustDough()
    }
    
    public func createSauce() -> Sauce {
        return PlumTomatoSauce()
    }
    
    public func createCheese() -> Cheese {
        return MozarrelaCheese()
    }
    
    public func createVeggies() -> [Veggies] {
        return [Spinach(), BlackOlives(), EggPlant()]
    }
    
    public func createPepperoni() -> Pepperoni {
        return SlicedPepperoni()
    }
    
    public func createClam() -> Clams {
        return FrozenClams()
    }
    
    public init() {
        
    }
    
}
