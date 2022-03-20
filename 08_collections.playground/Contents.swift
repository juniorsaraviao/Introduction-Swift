import UIKit

// Array
var someInts = [Int]() // init array
someInts.count
someInts.append(12)
someInts.count
someInts = [] // clean arrays

var someDoubles = Array(repeating: 3.141592, count: 5)
someDoubles.count

var moreDouble = Array(repeating: 2.5, count: 2) + someDoubles

var shoppingList = ["Potatoes", "Beans", "Pepper", "Lettuce"]
shoppingList.count

if shoppingList.isEmpty {
    print("The shopping list is empty")
}else {
    print("It's ready to order")
}

shoppingList.append("Soda")
shoppingList.count

var firstElement = shoppingList.first
shoppingList[1...3]
shoppingList[1...3] = ["Bananas", "Oranges", "Apples"]
shoppingList

for item in shoppingList {
    print(item)
}

for (idx, item) in shoppingList.enumerated() {
    print("Item \(idx + 1): \(item)")
}

// Set
// a set is not ordered
var letters = Set<Character>()
letters.count
letters.insert("c")
letters.insert("h")
letters.insert("a")

if let removedLetter = letters.remove("h") {
    print("The letter \"\(removedLetter)\" has been removed")
}

let arrayFromSet = Array(letters)


let oddDigits: Set<Int> = [1, 3, 5, 7, 9]
let evenDigits: Set<Int> = [0, 2, 4, 6, 8]
let primeDigits: Set<Int> = [2, 3, 5, 7]

// Union
let union = oddDigits.union(evenDigits).sorted()
// Intersection
let intersect = oddDigits.intersection(primeDigits).sorted()
// Difference
let difference = evenDigits.subtracting(primeDigits).sorted()
// simetric difference
let simetric = oddDigits.symmetricDifference(primeDigits).sorted()
