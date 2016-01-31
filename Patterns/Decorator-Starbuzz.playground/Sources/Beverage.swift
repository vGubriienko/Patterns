import Foundation


public class Beverage {
    
    public var description: String {
        return "Unknown Beverage"
    }
    
    public var cost: Double {
        return 0.0
    }
    
    public init() {}
    
}


public class Espresso: Beverage {
    
    override public var description: String {
        return "Espresso"
    }
    
    override public var cost: Double {
        return 1.99
    }
    
}


public class HouseBlend: Beverage {
    
    override public var description: String {
        return "House Blend Cofee"
    }
    
    override public var cost: Double {
        return 0.89
    }
    
}


public class DarkRoast: Beverage {
    
    override public var description: String {
        return "Dark Roast"
    }
    
    override public var cost: Double {
        return 0.99
    }
    
}


public class Decaf: Beverage {
    
    override public var description: String {
        return "Decaf"
    }
    
    override public var cost: Double {
        return 1.05
    }
    
}
