import UIKit

struct TimesTable {
    let multiplier: Int
    
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print("6x3 = \(threeTimesTable[6])")

for idx in 0...10 {
    print("\(idx) x 3 = \(threeTimesTable[idx])")
}
