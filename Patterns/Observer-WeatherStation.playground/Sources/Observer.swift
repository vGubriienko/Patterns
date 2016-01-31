import Foundation


public protocol Observer: class {
    func update(subject: Observable)
}


public protocol Observable: class {
    var observers: [WeakObserver] { get set }
    var changed: Bool { get set }
    
    func registerObserver(observer: Observer)
    func removeObserver(observer: Observer)
    func notifyObservers()
}


extension Observable {
    
    public func registerObserver(observer: Observer) {
        observers.append(WeakObserver(value: observer))
    }
    
    public func removeObserver(observer: Observer) {
        guard let observerIndex = observers.indexOf({ $0.value === observer }) else { return }
        
        observers.removeAtIndex(observerIndex)
    }
    
    public func notifyObservers() {
        if changed {
            for i in (0..<observers.count).reverse() where observers.count > 0 {
                let observerBox = observers[i]
                if let observer = observerBox.value {
                    observer.update(self)
                } else {
                    observers.removeAtIndex(i)
                }
            }
            
            changed = false
        }
    }
    
}


public class WeakObserver {
    
    public weak var value: Observer?
    
    public init (value: Observer) {
        self.value = value
    }
    
}
