import UIKit

let someString = "Sample string"

let multiLineString = """
    We're coding with swift
    Greeting from Peru
"""

print(multiLineString)

let wiseWords = "\"Imagination is more important than Knowledge\" - Albert Eistain"
let dolarSig = "\u{24}"
let blackHeart = "\u{2665}"
let heart = "\u{1F480}"
let flag = "\u{1F1F5}\u{1F1EA}"


var empeString = ""
var anotherEmptyString = String()

if empeString.isEmpty {
    print("The string is empty")
} else {
    print("The string has a value")
}


let name = "Football ⚽️"
for char in name {
    print(char)
}
print(name.count)
let exclamationChar: Character = "!"

let nameChars: [Character] = ["a", "b", "c"]
var nameString = String(nameChars)
nameString.append(exclamationChar)

let greeting = "Hello, how are you?"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]

for idx in greeting.indices {
    print("\(greeting[idx]) - \(idx)")
}

var welcome = "Hi"

welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: ", Sir", at: welcome.index(before: welcome.endIndex))

let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)