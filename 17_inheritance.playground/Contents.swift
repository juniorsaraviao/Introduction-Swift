import UIKit

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "Speed \(currentSpeed) km/h"
    }
    
    func makeNoise() {
        // do nothing, override
        print("Depens on the vehicle")
    }
}

let someVehicle = Vehicle()
someVehicle.description

class Bike: Vehicle {
    var hasBasket = false
}

let bike = Bike()
bike.hasBasket = true
bike.currentSpeed = 15.0
print(bike.description)

class Tandem: Bike {
    var currentNumberOfPassagers = 0
}

let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassagers = 2
tandem.currentSpeed = 22.0
print(tandem.description)

class Train: Vehicle {
    var numOfWagons = 0
    
    override func makeNoise() {
        print("Choo Choo")
    }
}

let train = Train()
train.makeNoise()
tandem.makeNoise()

class Car: Vehicle {
    var gear = 1
    final var model = "" // not override property, method, etc
    override var description: String {
        return super.description + " and the gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 55
car.gear = 3
print(car.description)
