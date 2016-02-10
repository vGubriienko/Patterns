//: Playground - noun: a place where people can play

import UIKit


let queue = dispatch_queue_create("Queue", DISPATCH_QUEUE_CONCURRENT)

print("Start preparing queue")

dispatch_apply(500, queue) { i in
    let boiler = ChocolateBoiler.sharedInstance
    boiler.fill()
    boiler.boil()
    boiler.drain()
}

print("All tasks queued")

