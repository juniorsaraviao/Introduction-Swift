import UIKit

let b = 10
var a = 5

a = b

if a == b {
    print("The values are equal")
}

14.5.truncatingRemainder(dividingBy: 5)

let age = 17
print(age >= 18 ? "Enter the pool" : "Sorry, you can't")


let defaultAge = 18
var userAge: Int?

var ageToBeUsed = userAge ?? defaultAge

let defaultColor = "red"
var userColorName: String?

var colorNameToUse = userColorName ?? defaultColor

//Closed ranges
for idx in 1...5 {
    print(idx)
}

//Not consider the last value
for idx in 1..<5 {
    print(idx)
}
let names = ["Ricardo", "Juan Gabriel", "Pedro"]
for i in 0..<names.count {
    print("The person\(i+1)'s name is \(names[i])")
}

for name in names[1...] {
    print("Another way, the person's name is: \(name)")
}

var range = ...5 // from -infinito to 5
range.contains(-4)
range.contains(7)

// Not
let allowEntry = false
if !allowEntry {
    print("Denied access!!!")
}

// And
let enterDoorCode = true
let passRetinaScan = false

if enterDoorCode && passRetinaScan {
    print("Welcome to the company!")
}else {
    print("Denied access, try again!!!")
}

// Or
let hasMoney = true
let hasInvitation = false
if hasMoney || hasInvitation {
    print("Welcome to the party!")
}else {
    print("Not enter")
}

