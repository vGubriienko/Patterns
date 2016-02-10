import Foundation


private let ChocolateBoilerObject = ChocolateBoiler()


public class ChocolateBoiler {
    
    private (set) var empty: Bool
    private (set) var boiled: Bool
    
    private var cycleCounter = 0
    private let lock = NSLock()
    
    public static var sharedInstance: ChocolateBoiler {
        return ChocolateBoilerObject
    }
    
    private init() {
        empty = true
        boiled = false
        print("ChocolateBoiler Initialized")
    }
    
    public func fill() {
        lock.lock()
        if empty {
            empty = false
            boiled = false
            print("[\(cycleCounter)]    1: Fill boiler with chocolate and milk")
        }
        lock.unlock()
    }
    
    public func boil() {
        lock.lock()
        if !empty && !boiled {
            print("[\(cycleCounter)]    2: Boil chocolate and milk")
            boiled = true
        }
        lock.unlock()
    }
    
    public func drain() {
        lock.lock()
        if !empty && boiled {
            print("[\(cycleCounter)]    3: Drain boiled chocolate and milk")
            empty = true
            boiled = false
            cycleCounter++
        }
        lock.unlock()
    }
    
}

