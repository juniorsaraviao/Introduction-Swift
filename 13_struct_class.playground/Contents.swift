import UIKit

// Struct vs Class
struct SomeStruct {
    // definition here
}

class SomeClass {
    // definition here
}

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution() // immutable
let someVideoMode = VideoMode() // possible to change properties

print(someResolution.width)
someVideoMode.resolution.width = 1280
print(someVideoMode.resolution.width)

// not possible -> someResolution.width = 1280

let vga = Resolution(width: 640, height: 480)
vga.width
vga.height

let hd = Resolution(width: 1920, height: 1080)

var cinema = hd
print("\(cinema.width) x \(cinema.height)")
cinema.width = 2048
print("\(cinema.width) x \(cinema.height)")
print("\(hd.width) x \(hd.height)")


enum CompassPoint {
    case north, south, east, west
}

var currentDirection = CompassPoint.north
let oldDirection = currentDirection
currentDirection = .south

print(currentDirection)
print(oldDirection)
