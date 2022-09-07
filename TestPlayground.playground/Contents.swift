import UIKit

var greeting = "Hello, playground"

var greetingNum: TimeInterval = 1.0

var hi = "Hi!"

//var me: Person = "Taryn"
//
//var me2 = Person(name: "Taryn")



// typealias can wrap up types w our own name
typealias Coordinate = (x: Int, y: Int)

var coordinates: Coordinate = (x: 0, y:30)

coordinates.x
coordinates.y

print(coordinates)

typealias SpecialNumber = Int

var myNumber: SpecialNumber = 2

func addNumbers(number: SpecialNumber) {
    
}

enum CardinalDirections: String {
    case north, east, south, west
    
    var description: String {
        return rawValue
    }
    
    var axis: String {
        switch self {
        case .north, .south:
            return "vertical"
            
        case .east, .west:
            return "horizontal"
        }
    }
}

var direction = CardinalDirections.north
direction.axis

struct Person {
    var firstName: String
    var lastName: String
}

let mee = Person(firstName:  "Taryn" , lastName: "Hovenkamp")

class Human {
    var firstName:String
    var lastName: String
    
    init() {
        firstName = "First Name"
        lastName = "Last Name"
        
        // let components = name.components(separatedBy: " ")
        // firstName = components.first ?? ""
    }
}

let human = Human()
human.lastName


struct CoordinatesStruct {
    // let makes things immutable
    let x: Int
    let y:Int
    
    // class method
    static var zero: CoordinatesStruct {
        return CoordinatesStruct(x:0, y:0)
    }
}

let start = CoordinatesStruct(x: 0, y: 30)

start.x

CoordinatesStruct.zero


// arrays and dictionaries and lists
var list = [0,2,3, 4, 8, 93]
var list2: [Int] = [0,2,4,5,20,543,654]
var list3 = [Int]()

list3.append(12)
list3.append(10)

var dictionary = [Int: String]()

dictionary[3] = "Three"
dictionary

dictionary[4]

for item in list.enumerated() {
    print ("On item \(item.element)")
}

for (index, item) in list.enumerated() {
    print ("On item \(item) with index \(index)")
}

func math(_ number: Int, _ other: Int = 5) -> Int {
    return number + other
}

func math(_ number: Float, _ other: Float = 5) -> Float {
    print("hi")
    return number + other
}

// pattern matching -- it knows which function to use
math(4)
math(4,10)
math(4.0, 10)
