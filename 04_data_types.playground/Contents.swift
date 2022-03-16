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
