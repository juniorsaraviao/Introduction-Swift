import UIKit

enum SomeEnumaration {
    // add enums
}

enum CompassPoint {
    case north
    case south
    case east
    case west
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
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
