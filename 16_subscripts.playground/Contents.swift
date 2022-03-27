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


struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        self.grid = Array.init(repeating: 0.0, count: self.rows * self.columns)
    }
    
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && column >= 0 && row < self.rows && column < self.columns
    }
    
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row*columns) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row*columns)+column] = newValue
        }
    }
}

var matrix = Matrix(rows: 2, columns: 2)
matrix[0, 1] = 1.5
matrix[1, 0] = 2.5
matrix

for row in 0..<matrix.rows {
    for colum in 0..<matrix.columns {
        print(matrix[row, colum], separator: " ", terminator: " ")
    }
    print(" ")
}
