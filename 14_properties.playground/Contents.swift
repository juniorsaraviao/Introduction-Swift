import UIKit

struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6
let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
//rangeOfFourItems.firstValue = 7 -> error

class DataImporter {
    var filename = "data.txt"
}


class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("more data")
manager
// the importer is created just below (not before)
manager.importer.filename



struct SinglePoint {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect  {
    var origin = SinglePoint()
    var size = Size()
    var center : SinglePoint {
        get {
            SinglePoint(x: origin.x + size.width/2, y: origin.y + size.height/2)
        }
        set {
            origin.x = newValue.x - size.width/2
            origin.y = newValue.y - size.height/2
        }
    }
}

var square = Rect(origin: SinglePoint(x: 0, y: 0), size: Size(width: 10, height: 10))
square.center
let initialSquare = square.center
square.center = SinglePoint(x: 20, y: 20)

