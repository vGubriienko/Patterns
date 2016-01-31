import Foundation


public class WeatherData: Observable {
    
    private (set) var temperature: Float = 0
    private (set) var humidity: Float = 0
    private (set) var pressure: Float = 0
    
    public var observers = [WeakObserver]()
    public var changed = false
    
    public init() {
        NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "updateValues", userInfo: nil, repeats: true)
    }
    
    public func measurementsChanged() {
        changed = true
        notifyObservers()
    }
    
    @objc private func updateValues() {
        temperature = Float(20 + rand() % 10)
        humidity = Float(30 + rand() % 50)
        pressure = Float(600 + rand() % 200)
        measurementsChanged()
    }
    
}
