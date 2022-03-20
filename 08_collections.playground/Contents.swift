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
