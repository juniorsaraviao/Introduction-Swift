import UIKit

class Counter {
    var count = 0
    
    func increment() {
        self.count += 1
    }
    
    func incrememt(by amount: Int) {
        self.count += amount
    }
    
    func reset() {
        self.count = 0
    }
}

let counter = Counter()
counter.increment()
counter.incrememt(by: 8)
counter.reset()

struct Point {
    var x = 0.0, y = 0.0
    
    func isToRightOf(of x: Double) -> Bool {
        return self.x > x
    }
}

let somePoint = Point(x: 4, y: 5)
somePoint.isToRightOf(of: 6)
