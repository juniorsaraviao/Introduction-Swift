import UIKit

let names = ["Chelsea", "Real Madrid", "Bayern Munich"]

for name in names {
    print("Hi, \(name)!")
}

// stride: not include the 'to'
for tickMark in stride(from: 0, to: 60, by: 5) {
    print(String(format: "%02d", tickMark))
}
