import UIKit

func canThrowError() throws {
//Some code
}

do {
    try canThrowError()
    // continue if there are no errors
}catch {
    // there is an error
}

var isHungry = true
var hasGas = true
var hasIngredients = false

func makeASandwich() throws {
    if isHungry{
        if hasGas{
            if hasIngredients{
                
            }else {
                throw SandwichError.notIngredients
            }
        }else {
            throw SandwichError.notGas
        }
    }else {
        throw SandwichError.notHungry
    }
}


do {
    try makeASandwich()
}catch SandwichError.notHungry {
    print("I'm not hungry")
}catch SandwichError.notGas {
    print("Not gas in my kitchen")
}catch SandwichError.notIngredients {
    print("Not ingredients at all")
}

enum SandwichError: Error {
    case notHungry
    case notGas
    case notIngredients
}

var age = -5
precondition(age >= 0, "Age can't be negative")

if age > 10 {
    print("Continue!!")
}else if age >= 0 {
    print("You're a little guy")
}else {
    assertionFailure("Age can't be negative")
}
