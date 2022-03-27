import UIKit

struct Fahrenheit {
    var temperature: Double
    
    init() {
        self.temperature = 32
    }
}

var f1 = Fahrenheit()

struct Celsius {
    var temperature: Double
    
    init(fromFahrenheit fahrenheit: Double) {
        self.temperature = (fahrenheit-32) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        self.temperature = kelvin - 273.15
    }
}

let boilingPointOfWater = Celsius(fromFahrenheit: 212)
let freezingPointOfWater = Celsius(fromKelvin: 273.15)


struct Color {
    let red, green, blue: Double
    
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    init(white: Double) {
        self.red = white
        self.green = white
        self.blue = white
    }
}

let magenta = Color(red: 1, green: 0, blue: 1)
let halfGray = Color(white: 0.5)
let green = Color(red: 0, green: 1, blue: 0)


class SuverQuestion {
    let text: String
    var response: String?
    
    init(text: String) {
        self.text = text
    }
    
    func ask() {
        print(text)
    }
}

let q1 = SuverQuestion(text: "Do you like tacos?")
q1.ask()
q1.response = "Yes, I do"


class Vehicle {
    var numberOfWheels = 0
    var description: String {
        return "Number of wheels: \(numberOfWheels)"
    }
}

let vehicle = Vehicle()
vehicle.description

class Bike: Vehicle {
    override init() {
        super.init()
        numberOfWheels = 2
    }
}

let bike = Bike()
bike.description

class Hoverboard: Vehicle {
    var color: String
    init(color: String) {
        self.color = color
        // calls super.init() by default
    }
    
    override var description: String {
        return "\(super.description) with color: \(self.color)"
    }
}

let hoverboard = Hoverboard(color: "silver")
print(hoverboard.description)
