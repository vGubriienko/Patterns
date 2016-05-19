import Foundation


public class Light {
    
    public init() {
        
    }
    
    public func on() {
        print("Light switched on")
    }
    
    public func off() {
        print("Light switched off")
    }
    
}


public class Stereo {
    
    public init() {
        
    }
    
    public func on() {
        print("Stereo switched on")
    }
    
    public func off() {
        print("Stereo switched off")
    }
    
    public func setCD() {
        print("CD set")
    }
    
    public func setVolume(volume: Int) {
        print("Volume set to \(volume)")
    }
    
}
