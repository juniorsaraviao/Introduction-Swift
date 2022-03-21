import UIKit

func greeting(person: String) -> String{
    return "Hello, \(person)!"
}

print(greeting(person: "Random name"))

func helloWorld() -> Void {
    print("Hello, World")
}

helloWorld()

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty{
        return nil
    }
    
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count] {
        if currentMin > value {
            currentMin = value
        } else if currentMax < value {
            currentMax = value
        }
    }
    
    return (currentMin, currentMax)
}

let bounds = minMax(array: [6, 3,-8,3,1,9,5,15,-9])
print("The values are from \(bounds!.min) and \(bounds!.max)")
minMax(array: [])

// alias and default
func greetings(_ person: String, from hometown: String = "USA") -> String {
    return "Hi, \(person) from \(hometown)"
}

greetings("Random", from: "Peru")
greetings("Random 2")


func mean(_ numbers: Double...) -> Double {
    var total: Double = 0;
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
mean(5,4,6,7,1)

var x = 5

func addOne(number: Int) {
    var number2 = number
    number2 += 1
    print("The number is \(number2) now")
}

addOne(number: x)

func swapTwoInts(_ a: inout Int, _ b: inout Int){
    let tempA = a
    a = b
    b = tempA
}

var someInt = 3
var otherInt = 7
print("someInt: \(someInt) - otherInt: \(otherInt)")
swapTwoInts(&someInt, &otherInt)
print("someInt: \(someInt) - otherInt: \(otherInt)")