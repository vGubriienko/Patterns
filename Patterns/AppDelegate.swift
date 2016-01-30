//
//  AppDelegate.swift
//  Patterns
//
//  Created by Viktor Gubriienko on 29.01.16.
//  Copyright © 2016 Viktor Gubriienko. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        testChapter1()
        
        return true
    }

    private func testChapter1() {
        let mallard = MallardDuck()
        mallard.performQuack()
        mallard.performFly()
        
        let model = ModelDuck()
        model.performFly()
        model.flyBehavior = FlyRocketPowered()
        model.performFly()
    }
    
}
