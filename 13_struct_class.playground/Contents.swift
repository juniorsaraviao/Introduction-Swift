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
