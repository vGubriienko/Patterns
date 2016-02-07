import Foundation


public class CaliforniaPizzaIngredientFactory: PizzaIngredientFactory {
    
    public func createDough() -> Dough {
        return VeryThinCrustDough()
    }
    
    public func createSauce() -> Sauce {
        return BruschettaSauce()
    }
    
    public func createCheese() -> Cheese {
        return GoatCheese()
    }
    
    public func createVeggies() -> [Veggies] {
        return [Spinach(), BlackOlives(), EggPlant()]
    }
    
    public func createPepperoni() -> Pepperoni {
        return SlicedPepperoni()
    }
    
    public func createClam() -> Clams {
        return Calamari()
    }
    
    public init() {
        
    }
    
}