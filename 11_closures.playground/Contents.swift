import UIKit

let names = ["Peru", "Chile", "Italy", "UK", "Argentina"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reverseName = names.sorted(by: backward)
/*
 { (params) -> return type in
    // Code...
 }
 */

reverseName = names.sorted(by: { s1, s2 in s1 > s2 })
print(reverseName)
// Other ways:
//reverseName = names.sorted(by: { $0 > $1})
//reverseName = names.sorted(by: >)


func someFunctionThatTakesAClosure(closure: () -> Void) {
    // Code here!
}

someFunctionThatTakesAClosure(closure: {
    // Code here!
})

someFunctionThatTakesAClosure {
    <#code#>
}

let digits = [0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five",
              6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"]
let numbers = [-16, 58, 2127]

let numberStrings = numbers.map { (number) -> String in
    
    func change(number: Int) -> String {
        var number = number
        var output = ""
        repeat {
            output = digits[number % 10]! + output
            number /= 10
        }while number > 0
        return output
    }
    
    return number < 0 ? "minus" + change(number: number * -1) : change(number: number)
}


func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()
