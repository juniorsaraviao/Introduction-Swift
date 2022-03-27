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
    
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        // values in a struct are immutable
//        self.x += deltaX
//        self.y += deltaY
        
        // another way
        self = Point(x: self.x + deltaX, y: self.y + deltaY)
    }
}

var somePoint = Point(x: 4, y: 5)
somePoint.isToRightOf(of: 6)
somePoint.moveBy(x: 2, y: -6)


class SomeClass {
    class func someMethod() {
        print("Hello")
    }
}

SomeClass.someMethod()


struct LevelTracker {
    static var highestUnlockedLevel = 1
    var currentLevel = 1
    
    static func unlock(_ level: Int) {
        if level > highestUnlockedLevel {
            highestUnlockedLevel = level
        }
    }
    
    static func isUnlocked(_ level: Int) -> Bool {
        level <= highestUnlockedLevel
    }
    
    mutating func advance(to level: Int) -> Bool {
        if LevelTracker.isUnlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}

class Player {
    var tracker = LevelTracker()
    let playerName: String
    func complete(level: Int) {
        LevelTracker.unlock(level + 1)
        tracker.advance(to: level + 1)
    }
    
    init(name: String) {
        self.playerName = name
    }
}

var player = Player(name: "player 1")
player.complete(level: 1)

var player2 = Player(name: "player 2")
player.complete(level: 3)
LevelTracker.highestUnlockedLevel
