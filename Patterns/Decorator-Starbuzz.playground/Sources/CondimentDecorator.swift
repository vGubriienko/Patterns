import Foundation


public class CondimentDecorator: Beverage {

    private let beverage: Beverage
    
    public init(beverage: Beverage) {
        self.beverage = beverage
    }
    
}


public class Mocha: CondimentDecorator {
    

    override public var description: String {
        return beverage.description + ", Mocha"
    }
    
    override public var cost: Double {
        return 0.20 + beverage.cost
    }

    
}


public class Soy: CondimentDecorator {
    
    override public var description: String {
        return beverage.description + ", Soy"
    }
    
    override public var cost: Double {
        return 0.15 + beverage.cost
    }
    
}


public class Whip: CondimentDecorator {
    
    override public var description: String {
        return beverage.description + ", Whip"
    }
    
    override public var cost: Double {
        return 0.10 + beverage.cost
    }
    
}


public class Milk: CondimentDecorator {
    
    override public var description: String {
        return beverage.description + ", Milk"
    }
    
    override public var cost: Double {
        return 0.10 + beverage.cost
    }
    
}
