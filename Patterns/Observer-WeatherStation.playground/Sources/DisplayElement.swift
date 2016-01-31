import Foundation


public protocol DisplayElement {
    func display()
}


public class CurrentConditionsDisplay: DisplayElement, Observer {
    
    private var temperature: Float = 0
    private var humidity: Float = 0
    private var weatherData: Observable
    
    public init(weatherData: Observable) {
        self.weatherData = weatherData
        weatherData.registerObserver(self)
    }
    
    public func display() {
        print("Current conditions: \(temperature)C˚ / \(humidity)%")
    }
    
    public func update(subject: Observable) {
        if let weatherData = weatherData as? WeatherData where weatherData === subject {
            temperature = weatherData.temperature
            humidity = weatherData.humidity
            display()
        }
    }
    
    deinit {
        weatherData.removeObserver(self)
    }
    
}


public class StatisticsDisplay: DisplayElement, Observer {
    
    private var minTemperature: Float?
    private var maxTemperature: Float?
    private var avgTemperature: Float = 0
    private var iterationIndex = 0
    
    private var weatherData: Observable
    
    public init(weatherData: Observable) {
        self.weatherData = weatherData
        self.weatherData.registerObserver(self)
    }
    
    public func display() {
        var maxTempStr = "NA"
        if let maxTemperature = maxTemperature {
            maxTempStr = String(maxTemperature)
        }
        
        var minTempStr = "NA"
        if let minTemperature = minTemperature {
            minTempStr = String(minTemperature)
        }
        
        print("Avg/Max/Min temperature = \(avgTemperature)/\(maxTempStr)/\(minTempStr)")
    }
    
    public func update(subject: Observable) {
        if let weatherData = weatherData as? WeatherData where weatherData === subject {
            let temperature = weatherData.temperature
            
            if temperature <= minTemperature ?? temperature {
                minTemperature = temperature
            }
            
            if temperature >= maxTemperature ?? temperature {
                maxTemperature = temperature
            }
            
            avgTemperature = avgTemperature + Float(1.0) / (Float(iterationIndex) + Float(1.0)) * (temperature - avgTemperature)
            
            iterationIndex++
            
            display()
        }
        
        
    }
    
    deinit {
        weatherData.removeObserver(self)
    }
    
}
