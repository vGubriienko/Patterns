//: Playground - noun: a place where people can play

import UIKit

var observers = [WeakObserver]()

let weatherData = WeatherData()
let currentDisplay = CurrentConditionsDisplay(weatherData: weatherData)
let statisticsDisplay = StatisticsDisplay(weatherData: weatherData)

// Start test flow
CFRunLoopRun()