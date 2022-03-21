import UIKit

let names = ["Chelsea", "Real Madrid", "Bayern Munich"]

for name in names {
    print("Hi, \(name)!")
}

// stride: not include the 'to'
for tickMark in stride(from: 0, to: 60, by: 5) {
    print(String(format: "%02d", tickMark))
}


// while
var i = 0
while i <= 10 {
    print(i)
    i += 1
}

repeat {
    i += 1
} while i < 10
print(i)


// switch
let someChar: Character = "z"
switch someChar {
    case "a", "A":
        print("first letter of the alphabet")
    case "z", "Z":
        print("last letter of the alphabet")
    default:
        print("any letter of the alphabet")
}
