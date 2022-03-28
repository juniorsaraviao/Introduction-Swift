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
    
    func printNumberOfRooms() {
        print("The number of rooms is \(numberOfRooms)")
    }
    
    var address: Address?
}

class Room {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    
    func buildingIndentifier() -> String? {
        if let buildingnumber = buildingNumber, let street = street {
            return "\(buildingnumber), \(street)"
        }else if buildingName != nil {
            return buildingName
        }else {
            return nil
        }
    }
}


let person1 = Person()
if let roomCount = person1.residence?.numberOfRooms {
    print("Person's house has \(roomCount) rooms")
}else {
    print("Person has no residence")
}

func createAddress() -> Address {
    print("Executing createAddress")
    let someAddress = Address()
    someAddress.buildingNumber = "13"
    someAddress.street = "Platzi Av."
    
    return someAddress
}

person1.residence?.address = createAddress()
person1.residence?.printNumberOfRooms()

if (person1.residence?.address = createAddress()) != nil {
    print("The address has been assigned")
}else {
    print("Person has still no a residence")
}

if let firstRoomName = person1.residence?[0].name {
    print("The first room is the \(firstRoomName)")
}else {
    print("Unknown name!")
}

person1.residence?[0] = Room(name: "Bathroom")

let house = Residence()
house.rooms.append(Room(name: "Bathroom"))
house.rooms.append(Room(name: "Living room"))
house.rooms.append(Room(name: "Kitchen"))
person1.residence = house

if let firstRoomName = person1.residence?[0].name {
    print("The first room is the \(firstRoomName)")
}else {
    print("Unknown name!")
}
