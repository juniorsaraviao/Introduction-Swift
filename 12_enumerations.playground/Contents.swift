import UIKit

enum SomeEnumaration {
    // add enums
}

enum CompassPoint: String {
    case north
    case south
    case east
    case west
}

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToGo = CompassPoint.east

switch directionToGo {
    
case .north:
    print("Go to north")
case .south:
    print("Penguins in the south")
case .east:
    print("Go to east")
case .west:
    print("Go to west")
}

enum Beverage: CaseIterable {
    case coffee, tea, juice, redbull
}
let numberOfChoices = Beverage.allCases.count

for beverage in Beverage.allCases {
    print(beverage)
}

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("ASDFGHJKL")

switch productBarcode {
    
case let .upc(numberSystem, manufacturer, product, check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check)")
case let .qrCode(productCode):
    print("QR: \(productCode)")
}


enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

let earthOrder = Planet.earth.rawValue
let northDirection = CompassPoint.east.rawValue
let somePlanet = Planet(rawValue: 2)

let planetPosition = -4
if let planet = Planet(rawValue: planetPosition){
    // do something
}else {
    print("The planet doesn't exist")
}
