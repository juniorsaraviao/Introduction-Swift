import UIKit

let areOranger = true
let foodIsDelicious = false

var isAged: Bool
isAged = false

if isAged {
    print("Enter the party!!!")
}else {
    print("Sorry, you can't enter the party")
}

var age = 31

if age >= 18 {
    print("Enter the party :)")
}else {
    print("Can't enter the party :(")
}


//Tuples
let http404Error = (404, "Page not found")
let (statusCode, statusMessage) = http404Error
print("Status code \(statusCode) - Message: \(statusMessage)")
print(http404Error)

let (justStatusCode, _) = http404Error
print("Status code: \(justStatusCode)")
print("Second way - Status code \(http404Error.0)")

let http200Status = (statusCode: 200, description: "OK")
print("Status code: \(http200Status.statusCode) - Description: \(http200Status.description)")


let possibleAge = "nil"
let converterAge = Int(possibleAge) ?? 0 // Int?

var surveyAnswer: String?
// surveyAnswer = "42"
print(surveyAnswer ?? "Null value")

let ageSample = "14"
let converter = Int(ageSample)

if converter != nil {
    print("The user's age is not null - value: \(converter!)")
}else {
    print("The uses's age is null")
}


if let firstNumber = Int("4"),
    let secondNumber = Int("64"),
    firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}

let possibleString: String? = "An optional string"
let forceString: String = possibleString!

let assumedString: String! = "unwrapped string"
let implicitString: String = assumedString
