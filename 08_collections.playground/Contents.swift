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
