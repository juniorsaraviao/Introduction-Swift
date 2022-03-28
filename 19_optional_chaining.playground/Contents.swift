import UIKit

class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}

let person = Person()
// let roomCount = person.residence!.numberOfRooms

if let roomCount = person.residence?.numberOfRooms {
    print("Person's house has \(roomCount) rooms")
}else {
    print("Person has no residence")
}

person.residence = Residence()
if let roomCount = person.residence?.numberOfRooms {
    print("Person's house has \(roomCount) rooms")
}else {
    print("Person has no residence")
}
