import UIKit

/* class Person {
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
} */

class Person {
    var residence: Residence?
}

class Residence {
    var rooms = [Room]()
    var numberOfRooms: Int {
        return rooms.count
    }
    
    subscript(i: Int) -> Room {
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
}

class Room {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class Address {
    var buildingName: String?
    var buildingnumber: String?
    var street: String?
    
    func buildingIndentifier() -> String? {
        if let buildingnumber = buildingnumber, let street = street {
            return "\(buildingnumber), \(street)"
        }else if buildingName != nil {
            return buildingName
        }else {
            return nil
        }
    }
}
