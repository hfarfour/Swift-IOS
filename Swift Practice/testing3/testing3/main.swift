//
//  main.swift
//  testing3
//
//  Created by Hossam Farfour on 09/08/2022.
import Cocoa
import Foundation
print("=============Introdection==============")

/*
//Objects and Classes===========
class NameShape {
    var numberOfSide = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSide) sides."
    }
}
    var shape = NameShape()
    shape.numberOfSide = 7
    var shapeDescription = shape.simpleDescription()
    print(shapeDescription)
    var shapes = NameShape()
    print(shapes.numberOfSide)
//use initializer to set up the class when an instance is created. Use init to create one.

class Shape {
    var numberOfSides = 0
    var name: String

    init(name: String) {
        self.name = name
    }
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
//Notice how self is used to distinguish the name property from the name argument to the initializer. The arguments to the initializer are passed like a function call when you create an instance of the class. Every property needs a value assigned—either in its declaration (as with numberOfSides) or in the initializer (as with name).
class Square: Shape {
    var sideLength: Double
   // var numberOfSides = 4   //Cannot override with a stored property 'numberOfSides'
     init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }

    func area() -> Double {
        return sideLength * sideLength
    }

    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength). and number of side \(numberOfSides)"
    }
}
    let test = Square(sideLength: 5.0, name: "my test square")
    print ("area is \(test.area())")
    print("sidelength is \(test.sideLength)")
    print (test.simpleDescription())
         //or use optional (see below)
  
    //In addition to simple properties that are stored, properties can have a getter and a setter.
class Triangle: Shape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }

    var perimeter: Double {         // computed property
        get {
             3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }

    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength).. and number of side \(numberOfSides)"
    }
}
    var triangle = Triangle(sideLength: 2.0, name: "a triangle")
   print (triangle.simpleDescription())
   print(" triangle.sideLength before calling perimeter \(triangle.sideLength)")
   print("get \(triangle.perimeter)")
   triangle.perimeter = 9.0
   print(" triangle.sideLength after calling perimeter \(triangle.sideLength)")// 9 ÷ 3
   print (triangle.simpleDescription())  // it takes the new value

//If you don’t need to compute the property but still need to provide code that’s run before and after setting a new value, use willSet and didSet. The code you provide is run any time the value changes outside of an initializer.
   print("==========")
// setter and getter tother or just getter
// didset and willset togather or just one of them
class TriangleAndSquare {
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = Triangle(sideLength: size, name: name)
    }
    var square: Square {          //Property Observers willset only write only
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    var triangle: Triangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
}
    var triangleAndSquare = TriangleAndSquare(size: 20, name: "another test shape")
    print(triangleAndSquare.square.sideLength)
    print(triangleAndSquare.triangle.sideLength)// Prints "20.0"
    print(triangleAndSquare.square.area())

    triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
    print(triangleAndSquare.square.sideLength)
    print(triangleAndSquare.triangle.sideLength)
    print(triangleAndSquare.square.simpleDescription())    ///number of side comes from squre class 4
    print(triangleAndSquare.triangle.simpleDescription()) ///number of side comes from triangle class 3
    // Prints "50.0"
    
    triangleAndSquare.triangle = Triangle(sideLength: 30, name: " square and triangle")
    print(triangleAndSquare.square.sideLength)
    print(triangleAndSquare.triangle.sideLength)
    print(triangleAndSquare.square.simpleDescription())    ///number of side comes from squre class 4
    print(triangleAndSquare.triangle.simpleDescription()) ///number of side comes from triangle class 3
    print("==========")
//When working with optional values, you can write ? before operations like methods, properties, and subscripting. If the value before the ? is nil, everything after the ? is ignored and the value of the whole expression is nil. Otherwise, the optional value is unwrapped, and everything after the ? acts on the unwrapped value. In both cases, the value of the whole expression is an optional value.
    let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
    let sideLength = optionalSquare?.sideLength
    print("otional \(optionalSquare!.sideLength)")
    print ("otional \(optionalSquare!.area())")
    print ("otional \(optionalSquare!.simpleDescription())")



//All parameters passed into a Swift function are constants, so you can't change them. If you want, you can pass in one or more parameters as inout , which means they can be changed inside your function, and those changes reflect in the original value outside the function.



//Type Aliases==============
//Type aliases define an alternative name for an existing type.
//Type aliases are useful when you want to refer to an existing type by a name that’s contextually more appropriate, such as when working with data of a specific size from an external source:
    typealias code = String
    var changeName: code = " "
// typealise with dictionry
    var addess :[String: String] = [:]
    func changeMyName (address : [String: String]) {
    }
    // now using typealise
    typealias Address = [String: String]
    var addes :Address = [:]
    func ChangeMyName (addes : Address ) {
    }
    typealias AudioSample = UInt8
    //Once you define a type alias, you can use the alias anywhere you might use the original name:
var maxAmplitudeFound = AudioSample.min
print("maxAmplitudeFound is now \(maxAmplitudeFound)")


//Tuples================

//Tuples group multiple values into a single compound value.
//The values within a tuple can be of any type and don’t have to be of the same type as each other.

 //for loop in  tupel
let interestingNumbers = [
     "Prime": [2, 3, 5, 7, 11, 13],
     "Fibonacci": [1, 1, 2, 3, 5, 8],
     "Square": [1, 4, 9, 16, 25]]
 var largest = 0
 for (_ , value) in interestingNumbers {
     for number in value {
         if number > largest {
             largest = number
         }
     }
 }
 print("the largest number is \(largest)")

for (index,values) in interestingNumbers.enumerated() {
     print("that is \(index+1)  : \(values)")
 }
 //==
 //Accessing Subscripts of Optional Type
 //If a subscript returns a value of optional type—such as the key subscript of Swift’s Dictionary type—place a question mark after the subscript’s closing bracket to chain on its optional return value:

     var testScores = [
     "Dave": [86, 82, 84],
     "Bev": [79, 94, 81]]
     testScores["Dave"]?[0] = 10
     testScores["Bev"]?[0] += 1
     testScores["Brian"]?[0] = 72 // return nil
     for test in testScores{
     print(test)
     }
 //==

//example
let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")

//The (404, "Not Found") tuple groups together an Int and a String to give the HTTP status code two separate values: a number and a human-readable description. It can be described as “a tuple of type (Int, String)”.
    //You can decompose a tuple’s contents into separate constants or variables, which you then access as usual:
    let (statusCode, statusMessage) = http404Error
    print("The status code is \(statusCode)")
    // Prints "The status code is 404"
    print("The status message is \(statusMessage)")
    // Prints "The status message is Not Found"

    //If you only need some of the tuple’s values, ignore parts of the tuple with an underscore (_) when you decompose the tuple:

    let (justTheStatusCode, _) = http404Error
    print("The status code %% is \(justTheStatusCode)")
    // Prints "The status code is 404"

    //Alternatively, access the individual element values in a tuple using index numbers starting at zero:
    print("The status code is & \(http404Error.0)")
    // Prints "The status code is 404"
    print("The status message is & \(http404Error.1)")
    // Prints "The status message is Not Found"

    //You can name the individual elements in a tuple when the tuple is defined:
    let http200Status = (statusCodes: 200, descriptions: "OK")
    //If you name the elements in a tuple, you can use the element names to access the values of those elements:
    print("The status code  is now  \(http200Status.statusCodes)")
    // Prints "The status code is 200"
    print("The status message is now \(http200Status.descriptions)")
    // Prints "The status message is OK"
    print("The status code is & \(http200Status.0)")
    // Prints "The status code is 404"
    print("The status message is & \(http200Status.1)")
    // Prints "The status message is Not Found"



//Implicitly Unwrapped Optionals===============
//optionals indicate that a constant or variable is allowed to have “no value”. Optionals can be checked with an if statement to see if a value exists, and can be conditionally unwrapped with optional binding to access the optional’s value if it does exist.

    let possibleString: String? = " testing"
    let forcedString = possibleString!        // requires an exclamation point
    print(forcedString)

    let assumedString: String! = "An implicitly unwrapped optional string."
    print(assumedString!)
 


//Debugging with Assertions==============
//You write an assertion by calling the assert(_:_:file:line:) function from the Swift standard library. You pass this function an expression that evaluates to true or false and a message to display if the result of the condition is false. For example:

    let age = 3 // -3
    assert(age >= 0, "A person's age can't be less than zero.")
    print(" This assertion succeed , age is  \(age)")

//In this example, code execution continues if age >= 0 evaluates to true, that is, if the value of age is nonnegative. If the value of age is negative, as in the code above, then age >= 0 evaluates to false, and the assertion fails, terminating the application.

//You can omit the assertion message—for example, when it would just repeat the condition as prose.
//assert(age >= 0)
//If the code already checks the condition, you use the assertionFailure(_:file:line:) function to indicate that an assertion has failed. For example:
    let aged = 2
    if aged > 10 {
        print("You can ride the roller-coaster or the ferris wheel.")
    } else if aged >= 2 {
        print("You can ride the ferris wheel.")
    } else {
        assertionFailure("A person's age can't be less than zero.")
    }



//Ternary Conditional Operator======
//The ternary conditional operator is a special operator with three parts, which takes the form question ? answer1 : answer2. It’s a shortcut for evaluating one of two expressions based on whether question is true or false. If question is true, it evaluates answer1 and returns its value; otherwise, it evaluates answer2 and returns its value.
    let contentHeights = 40
    let hasHeaders = false
    let rowHeights = contentHeights + (hasHeaders ? 50 : 20)
    print("rowHeight is equal to \(rowHeights)")

//The example above is shorthand for the code below:
    let contentHeight = 20
    let hasHeader = true
    let rowHeight: Int
    if hasHeader {
        rowHeight = contentHeight + 50
    } else {
        rowHeight = contentHeight + 20
    }
    print("rowHeight is equal to \(rowHeight)")

//The example below uses the nil-coalescing operator to choose between a default color name and an optional user-defined color name:

    let defaultColor = "blue"
    var userDefinedColor: String?   // defaults nil
    var colorToUse = userDefinedColor ?? defaultColor
    print(colorToUse)

        let defaultColorName = "red"
        var userDefinedColorName: String?  // defaults nil
        var colorNameToUse: String
        if (userDefinedColorName != nil) {
            colorNameToUse = userDefinedColorName!
        print ("colour set to userDefinedColorName")
        print(colorNameToUse)
        } else {
        colorNameToUse = defaultColorName
        print(colorNameToUse)
        print("userDefinedColorName is nil, so colorNameToUse is set to the default of \(defaultColorName)")
        }

//Half-Open Range Operator===========
//The half-open range operator (a..<b) defines a range that runs from a to b, but doesn’t include b. It’s said to be half-open because it contains its first value, but not its final value.
    let names = ["Anna", "Alex", "Brian", "Jack","hossam"]
    let Count = names.count
    print(Count)
    for i in 0..<Count {
        print("Person \(i + 1) is called \(names[i])")
    }

//One-Sided Ranges===
//The closed range operator has an alternative form for ranges that continue as far as possible in one direction
    for name in names[2...] {
        print(name)
    }
    for name in names[...2] {
        print(name)
    }



//Inserting========
var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
print("/ welcome now equals \(welcome)")
welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))
print("// welcome now equals \(welcome)")
let tests = welcome.insert(contentsOf: " Hossam", at: welcome.index(before: welcome.endIndex))
print("12 welcome now equals \(welcome)")
// Removing=====
welcome.remove(at: welcome.index(before: welcome.endIndex))
print("/// welcome now equals \(welcome)")
let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)
print("//// welcome now equals \(welcome)")


print("=============@discardableResult==============")

//Many functions return values, but sometimes you don’t care what the return value is – you might want to ignore it sometimes, and use it other times.

//As an example, Swift’s dictionaries have an updateValue() method that lets you change the value for a given key. If the key was found you’ll be sent back the previous value, but if the key wasn’t found you’ll get back nil. This makes it a nice way to update and check at the same time, if you need it:

var number = 0
@discardableResult func incrment () -> Int {
    number += 1
    return number
}
let numbers = incrment()
print(numbers) // 1
incrment() // will not display anything
_ = incrment() // will not display anything
let numberss = incrment()
print(" here adding all increamt that called defore  \(numberss)") // print4


 func sums(a: Int, b: Int) -> Int {
    return a + b
}
sums(a: 1, b: 2) //  Result of call to 'sum(a:b:)' is unused

 @discardableResult func sum(a: Int, b: Int) -> Int {
    return a + b
}
 sum(a: 1, b: 2) // No longer produce the warning


    var scores = ["Sophie": 5, "James": 2]
    scores.updateValue(3, forKey: "James")
    //let changes = scores.updateValue(3, forKey: "James") // just to avoid worrying message
     print("James scores is \(scores["James"])")
    //print(changes)

    enum LogLevel: String {
    case trace, debug, info, warn, error, fatal
        }
@available(macOS 12, *)  // now is not available so we add this code
func log(_ message: String, level: LogLevel) -> String {
    let logLine = "[\(level)] \(Date.now): \(message)"
    print(logLine)
    return logLine
    }
if #available(macOS 12, *) {
   // log("hello world!")
    log("hello world!", level: .info)
} else {
    // Fallback on earlier versions
}
//Although the result from log() is interesting and might be useful sometimes, most of the time users aren’t going to care so this is a sensible place to use @discardableResult:
@available(macOS 12, *)
@discardableResult func logs(_ message: String, level: LogLevel = .info) -> String {
    let logLines = "[\(level)] \(Date.now): \(message)"
    print(logLines)
    return logLines
    }
if #available(macOS 12, *) {
    logs("hossam farfour!")
} else {
    // Fallback on earlier versions
}

print ( "====Optional Binding====and Optional chaining======")

//====Optional Binding====
//Optional binding is used to check whether an optional variable or constant has a non-nil value, and if so, assign that value to a temporary, non-optional variable. It stores the value that you’re binding in a variable

//Write an optional binding for an if statement as follows:
    //  if let constantName = someOptional {
    //    statements
    //  }
    var myOptional: String?  = "hello"
    if let temp = myOptional {
        print(temp)
        print("Can not use temp outside of the if bracket")
    } else {
        print("myOptional was nil")
    }

//=======Optional chaining=====
//Optional chaining allows us to call properties, methods, and subscripts on an optional that might be nil. If any of the chained values return nil, the return value will be nil. It does not store the value on the left into a variable.

//var tireSize = car?.tires?.tireSize

//1. optional chaining does not store the value on the left into a variable.
//2. Optional binding stores the value that you're binding in a variable.
//1. With optional chaining, you are creating a new reference, it's just wrapped.
//2. With optional binding, you are creating a new reference, it's just unwrapped.


struct Parts {
    let Name: String?
    let Price: Double?
}
class ComputerParts {
    var name: String?
    var price: Double?
    func findparts (name: String) -> Parts? {
        if (name == "keyboard") {
            return Parts(Name: "somekeyboard", Price: 300.0)
        } else if (name == "mouse") {
            return Parts(Name: "someMouse", Price: 100.0)
        }
        return nil   // because parts is optional I can return nil
    }
}
    /// optional binding
    let object = ComputerParts()
    if let part = object.findparts(name: "key") {
        print("the computer part is \(part.Name!) and the price is \(part.Price!)")
    }
    else {
        print(" 1 the computer part is not found")
    }
    /// optional chaing
   if let partPrice = object.findparts(name: "keyboard")?.Price { // or ?.name
        print("the computer part price is \(partPrice)")
    }
    else {
           print(" 2 the computer part is not found")
    }


//You can rewrite the possibleNumber example from the Optionals section to use optional binding rather than forced unwrapping:
    let possibleNumber = "123"
    if let actualNumber = Int(possibleNumber) {
        print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
    } else {
        print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
    }

//If you don’t need to refer to the original, optional constant or variable after accessing the value it contains, you can use the same name for the new constant or variable:
    let myNumber = Int(possibleNumber)
         // Here, myNumber is an optional integer
    if let Number = myNumber {
        // Here, myNumber is a non-optional integer
        print("My number is \(Number)")
    } else
    {
        print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
    }
// Prints "My number is 123"

//You can include as many optional bindings and Boolean conditions in a single if statement as you need to, separated by commas. If any of the values in the optional bindings are nil or any Boolean condition evaluates to false, the whole if statement’s condition is considered to be false.
// The following if statements are equivalent:

if let firstNumber = Int("9"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
} else {
    print("if statment is fales")
}

//or

if let firstNumber = Int("20"), let secondNumber = Int("2") {
    if firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
    } else {
        print("if statment is fales")
    }
}  else { print("if first statment is fales")}

 

if let firstNumber = Int("10") {
    if let secondNumber = Int("") {
if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        } else { print("if statment is fales")}
    }
    else { print("if second statment is fales")}
}
else { print("if first statment is fales")}
 */
print("=======Optional Chaining==========")
/*
//Optional chaining is a process for querying and calling properties, methods, and subscripts on an optional that might currently be nil. If the optional contains a value, the property, method, or subscript call succeeds; if the optional is nil, the property, method, or subscript call returns nil. Multiple queries can be chained together, and the entire chain fails gracefully if any link in the chain is nil.

 //Optional Chaining as an Alternative to Forced Unwrapping

  class SomeResidence {
    var numberOfRooms = 1
    }
    class somePerson {
        var residence: SomeResidence?  //have an optional residence property of type Residence?.
    }
    let johned = somePerson()

//If you try to access the numberOfRooms property of this person’s residence, by placing an exclamation point after residence to force the unwrapping of its value, you trigger a runtime error, because there’s no residence value to unwrap:

   //let roomCount = johned.residence!.numberOfRooms
   //this triggers a runtime error

//Optional chaining provides an alternative way to access the value of numberOfRooms. To use optional chaining, use a question mark in place of the exclamation point:

if let RoomCounts = johned.residence?.numberOfRooms {
        print("John's residence has \(RoomCounts) room(s).")
    } else {
    print("1-Unable to retrieve the number of rooms.")
    }

//Note that this is true even though numberOfRooms is a non-optional Int. The fact that it’s queried through an optional chain means that the call to numberOfRooms will always return an Int? instead of an Int.

//You can assign a Residence instance to john.residence, so that it no longer has a nil value

    johned.residence = SomeResidence()  //john.residence now has an actual instance instead of nil
    if let roomCount = johned.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
    } else {
    print("2-Unable to retrieve the number of rooms.")
    }
//===

//Defining Model Classes for Optional Chaining
class Room {
    let name: String
    init(name: String) {
    self.name = name
    }
 }
class Person {
    var residence: Residence?
    }

class Residence {
    var rooms: [Room] = []
    var address: Address?
    var numberOfRooms: Int {  //computed property,get only// if did not put computed property it need init
    return rooms.count
    }
    
    func printNumberOfRooms() {              //Residence has this mothed
    print("The number of rooms is \(numberOfRooms)")
    }
     //Residence defines an optional property called address, with a type of Address?
    subscript(i: Int) -> Room { //provides access to the room at the requested index in the rooms array.
        get {
        return rooms[i]
        }
        set {
        rooms[i] = newValue
        }
     }
}
    class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
        
//    func buildingIdentifier() -> String? {
//    if let buildingNumber = buildingNumber, let street = street {
//    return "buliding numbre is \(buildingNumber) , strret name is  \(street)"
//    } else if buildingName != nil {
//    return buildingName
//    } else {
//    return nil
//    }
//  }
         // the order of optional chaning is important
        func buildingIdentifier() -> String? {
            if ( street != nil) {
                return "The strret name is  \(street)  , buliding numbre is \(buildingNumber)"
                } else if (buildingNumber != nil) {
                    return buildingNumber
                } else if (buildingName != nil) {
                    return buildingName
                } else {
                    return nil
                }
            }
    }
//If you create a new Person instance, its residence attribute is defined as optional, this attribute will be initialized to empty by default:
let john = Person()
   if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
    } else {
    print("3-Unable to retrieve the number of rooms.")
   }

john.residence? = Residence() // will still gat nil becouse numberOfRooms stll nill
if let room = john.residence?.numberOfRooms {
print("John's residence has \(room) room(s).")
} else {
print("4-Unable to retrieve the number of rooms.")
}

//Because john.residence is nil, this optional chaining call fails in the same way as before
//You can also attempt to set a property’s value through optional chaining:
    let someAddress = Address()
    someAddress.buildingNumber = "18"
    someAddress.street = "Edinbourgh Court"
john.residence?.address = someAddress
//In this example, the attempt to set the address property of john.residence will fail, because john.residence is currently nil.
    print("the building is \(someAddress.buildingIdentifier()!)")

//
// can access them through function
    func createAddress() -> Address {
    print("Function was called.")
    let SomeAddres = Address()
        SomeAddres.buildingNumber = "18"
        SomeAddres.street = "Edinbough Court"
    return SomeAddres
    }
print("the building  \(createAddress().buildingIdentifier()!)")


//Calling Methods Through Optional Chaining
//You can use optional chaining to call a method on an optional value, and to check whether that method call is successful. You can do this even if that method doesn’t define a return value.
    if john.residence?.printNumberOfRooms() != nil {
    print("It was possible to print the number of rooms.")
    } else {
    print("1-It was not possible to print the number of rooms.")
    }
// Prints "It was not possible to print the number of rooms."
//
//The same is true if you attempt to set a property through optional chaining. The example above in Accessing Properties Through Optional Chaining attempts to set an address value for john.residence, even though the residence property is nil.

//Any attempt to set a property through optional chaining returns a value of type Void?, which enables you to compare against nil to see if the property was set successfully:

    if (john.residence?.address = someAddress) != nil { // still john.residence is nil
    print("It was possible to set the address.")
    } else {
    print("2-It was not possible to set the address.")
    }
// Prints "It was not possible to set the address."

//Accessing Subscripts Through Optional Chaining
//You can use optional chaining to try to retrieve and set a value from a subscript on an optional value, and to check whether that subscript call is successful.

if let firstRoomName = john.residence?[0].name {
    print("The first room name is \(firstRoomName).")
    } else {
    print("3-Unable to retrieve the first room name.")
    }
// Prints "Unable to retrieve the first room name."

//john.residence is no longer empty
    let johnsHouse = Residence()
johnsHouse.rooms.append(Room(name: "Living Room"))
    johnsHouse.rooms.append(Room(name: "Kitchen"))
    john.residence = johnsHouse  /// /john.residence now has an actual instance instead of nil


    if let firstRoomName = john.residence?[0].name {
    print("The first room name is \(firstRoomName).")
    } else {
    print("4-Unable to retrieve the first room name.")
    }
    // Prints "The first room name is Living Room."
    if let fsecondRoomName = john.residence?[1].name {
    print("The second room name is \(fsecondRoomName).")
    } else {
    print("5-Unable to retrieve the second room name.")
    }


    let JohnsAddress = Address()  // now can access john.residence address
    JohnsAddress.buildingNumber = "58"
    JohnsAddress.street = "CLOSE DOWI SANT"
    print("the building number is \(JohnsAddress.buildingNumber!)")
    print("the  strret name is \(JohnsAddress.street!)")
    john.residence?.address = JohnsAddress

    if (john.residence?.address = JohnsAddress) != nil {
    print("It was possible to set the address.")
    } else {
    print("-It was not possible to set the address.")
    }
print("================")

//Linking Multiple Levels of Chaining

//There are two levels of optional chaining in use here, to chain through the residence and address properties, both of which are of optional type:

    if let johnsStreet = john.residence?.address?.street {
    print("John's street name is \(johnsStreet).")
    } else {
    print("6-Unable to retrieve the address.")
    }

//If you set an actual Address instance as the value for john.residence.address, and set an actual value for the address’s street property, you can access the value of the street property through multilevel optional chaining:

    let johnsAddress = Address()
    johnsAddress.buildingName = "Larches"
    johnsAddress.street = "Laurel Street"
    johnsAddress.buildingNumber = "24"
    john.residence?.address = johnsAddress

    if let johnsStreet = john.residence?.address?.street {
    print("John's street name  \(johnsStreet).")
    } else {
    print("7-Unable to retrieve the address.")
    }
// Prints "John's street name is Laurel Street."


//Chaining on Methods with Optional Return Values
//The previous example shows how to retrieve the value of a property of optional type through optional chaining. You can also use optional chaining to call a method that returns a value of optional type, and to chain on that method’s return value if needed.

//The example below calls the Address class’s buildingIdentifier() method through optional chaining. This method returns a value of type String?. As described above, the ultimate return type of this method call after optional chaining is also String?:

    if let buildingIdentifier = john.residence?.address?.buildingIdentifier() {
    print("John's building identifier is \(buildingIdentifier).")
    }

//If you want to perform further optional chaining on this method’s return value, place the optional chaining question mark after the method’s parentheses:

    if let beginsWith =
    john.residence?.address?.buildingIdentifier()?.hasPrefix("The") {
    if beginsWith {
    print("John's building identifier begins with \"The\".")
    } else {
    print("John's building identifier doesn't begin with \"The\".")
    }
 }
// Prints "John's building identifier begins with "The"."

    class XmaxPresent {
    func surprise () -> Int {
    return Int.random(in: 1...10)
    }
 }
    let present: XmaxPresent? = XmaxPresent()
    if present != nil  {
    print(present!.surprise())
    }
    if let actual_Present = present {
    print(actual_Present.surprise())
    }
    //opotional chaining
    print (present?.surprise() ?? 7)
 
 */

print("=========Protocoal and extenstion======")
/*
    protocol Device {
    var a: Int {get set}
    var b: Int {get set}
    var x: Int {get set}
    }

    extension Device {
    func display() {
    print("a= \(a), b = \(b) x = \(x)")
    }
}

    struct Wiget:  Device {
    var a = 0
    var b = 0
    var x = 0

    init(start1: Int,start2: Int,start3: Int) {
    a = start1
    b = start2
    x = start3
    }
}

    let d = Wiget(start1: 39,start2: 29,start3: 70)
    d.display()

    var a: Int = 20
    print("Hello, World! \(a)")

    var somthing = Wiget(start1: 40,start2: 45,start3: 90)
    print("something = a: \(somthing.a), b: \(somthing.b) ,x: \(somthing.x)")

    var another = somthing
    print("another = a:\(another.a)")

    print ("make == a == change ")
    somthing.a = 50
    somthing.x = 100
    print("another = x: \(another.x)")
    print("somthing = x: \(somthing.x)")
    print("somthing = a:\(somthing.a)")
    print("another = a: \(another.a)")

*/
print("============Error Handling=========")
/*

//Error handling is the process of responding to and recovering from error conditions in your program. Swift provides first-class support for throwing, catching, propagating, and manipulating recoverable errors at runtime.
//use error handling to respond to error conditions your program may encounter during execution.
//In contrast to optionals, which can use the presence or absence of a value to communicate success or failure of a function, error handling allows you to determine the underlying cause of failure, and, if necessary, propagate the error to another part of your program.
//Here’s an example of how error handling can be used to respond to different error conditions:

//func makeASandwich() throws {
//    // ...
//}
//
//do {
//    try makeASandwich()
//    eatASandwich()
//} catch SandwichError.outOfCleanDishes {
//    washDishes()
//} catch SandwichError.missingIngredients(let ingredients) {
//    buyGroceries(ingredients)
//}


    enum PasswordError: Error {
    case short, abvious
  }
    func CheckPassword (password: String) throws -> String  {
       if password.count < 5 { throw PasswordError.short }
       if password == "12345" {throw PasswordError.abvious }
       if password.count < 8 {
       return "OK"
    } else if password.count < 10 {
      return "GOOD"
    } else {
    return "EXCELENT"
    }
  }
let pass = "1234"
    do {
    let result = try CheckPassword(password: pass)
    print("password rating is \(result)")
    }
    catch PasswordError.short {
    print("password too short ")
    }
    catch PasswordError.abvious {
    print("password is the same  ")
    }
    catch  {
    print("there was an error \(error.localizedDescription)")
    }
//====

 enum MyError: Error {
    case customError
}
extension MyError: LocalizedError {
     var errorDescription: String? {
        switch self {
        case .customError:
            return NSLocalizedString("A user-friendly description of the error.", comment:"MyError")
            // Returns a localized version of a string from the default table, which Xcode autogenerates when exporting localizations.
        }
    }
}

let error = MyError.customError as NSError
print("= there was an error \(error.localizedDescription)")
print("- there was an error \(error.localizedFailureReason ?? "I do not know")")
//================
//as NSError===========localizedFailureReason,,localizedRecoverySuggestion

enum SomeErrors: Error {
   case customError
}
extension SomeErrors: LocalizedError {
     var errorDescription: String? {
        switch self {
        case .customError:
            return NSLocalizedString("I failed.", comment: "")
        }
    }
     var failureReason: String? {
        switch self {
        case .customError:
            return NSLocalizedString("I don't know why.", comment: "")
        }
    }
     var recoverySuggestion: String? {
        switch self {
        case .customError:
            return NSLocalizedString("Switch it off and on again.", comment: "")
        }
    }
}

let testerrors = SomeErrors.customError as NSError
print("1-there was an error \(testerrors.localizedDescription)")
print("2-there was an error \(testerrors.localizedFailureReason ?? "I don't know")")
print("3-there was an error \(testerrors.localizedRecoverySuggestion ?? "I don't know")")

//=================
/// CustomNSError==========errorCode ,, errorUserInfo: [String : Any]
enum testError: Error {
   case customError
}
extension testError: CustomNSError {
     var errorCode: Int {
        switch self {
        case .customError:
            return 999
        }
    }
        var errorUserInfo: [String : Any] {
        switch self {
        case .customError:
            return [ "line": 988]
        }
    }
}
let errors = testError.customError as NSError
if let line = errors.userInfo["line"] as? Int {
    print("Error in line \(line)") // Error in line 13
}
print("the error code is \(errors.code)")
 
    //==========
 //all (LocalizedError, CustomNSError) togather
enum SomeError: Error {
   case customError
}
extension SomeError : LocalizedError, CustomNSError {
     var errorDescription: String? {
        switch self {
        case .customError:
            return NSLocalizedString("I failed.", comment: "")
        }
    }
     var failureReason: String? {
        switch self {
        case .customError:
            return NSLocalizedString("I don't know why.", comment: "")
        }
    }
     var recoverySuggestion: String? {
        switch self {
        case .customError:
            return NSLocalizedString("Switch it off and on again.", comment: "")
        }
    }
         var errorCode: Int {
            switch self {
            case .customError:
                return 999
            }
    }
       var errorUserInfo: [String : Any] {
        switch self {
        case .customError:
            return [ "line": 988]
        }
    }

}

let testerror = SomeError.customError as NSError
print("1-there was an error \(testerror.localizedDescription)")
print("2-there was an error \(testerror.localizedFailureReason ?? "I don't know")")
print("3-there was an error \(testerror.localizedRecoverySuggestion ?? "I don't know")")
if let line = testerror.userInfo["line"] as? Int {
    print("Error in line \(line)")
}
print("the error code is \(testerror.code)")

print("=====")

    enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
  }
extension PrinterError : LocalizedError, CustomNSError {
    
    var errorUserInfo: [String : Any] {
     switch self {
     case .noToner:
         return [ "line": 1060]
     case .outOfPaper:
         return [ "line": 1010]
     case .onFire:
         return [ "line": 1011]
     }
  }
    var errorCode: Int {
        switch self {
        case .noToner:
           return 120
        case .outOfPaper:
            return 121
        case .onFire:
            return 122
           }
   }
    
}
    func send (job: Int, printerName: String) throws -> String  {
        if printerName == "Never Has Toner" { throw PrinterError.noToner } else {
         return "works fine"
        }
   }

  do {
    let printer = try send(job: 14, printerName: "Never Has Toner")
      print("printers \(printer)")
  }
    catch PrinterError.noToner {
    print("Printer error: no toner ")
        
    let testerrors = PrinterError.noToner as NSError
        if let line = testerrors.userInfo["line"] as? Int {
            print("Error in line \(line)")
      }
        print("the error code is \(testerrors.code)")
    }

print("=====")

    enum VendingMachineError: Error {
        case invalidSelection
        case insufficientFunds(coinsNeeded: Int)
        case outOfStock
    }

    struct Item {
        var price: Int
        var counts: Int
    }

    class VendingMachine {
        var inventory = [
            "Candy Bar":Item(price: 12, counts: 7),
            "Chips" :   Item(price: 10, counts: 1),
            "Pretzels": Item(price: 7, counts: 11)]

        var coinsDeposited = 0

        func vend(itemNamed name: String) throws {
            guard let item = inventory[name] else {
                throw VendingMachineError.invalidSelection
            }

            guard item.counts > 0 else {
                throw VendingMachineError.outOfStock
            }

            guard item.price <= coinsDeposited else {
                throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
            }

            /// to count  down , count: 11 then 10 and so on
            coinsDeposited -= item.price
            var newItem = item
            newItem.counts -= 1
            inventory[name] = newItem
            print("Dispensing \(name)")
        }
    }
    let favoriteSnacks = [
        "Alice": "Chips",
        "Bob": "Licorice",
        "Eve": "Pretzels" ]
func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
        let snackName = favoriteSnacks[person] ?? "Candy Bar"
        try vendingMachine.vend(itemNamed: snackName)
    }

    var vendingMachine = VendingMachine()
    vendingMachine.coinsDeposited = 9
    //buying first item
    do {
        try buyFavoriteSnack(person: "Eve", vendingMachine: vendingMachine)
        print("Success! Yum.")
    } catch VendingMachineError.invalidSelection {
        print(" sorry , Invalid Selection.")
    } catch VendingMachineError.outOfStock {
        print("Out of Stock.")
    } catch VendingMachineError.insufficientFunds(let coinsNeed) {
        print("Insufficient funds. Please insert an additional \(coinsNeed) coins.")
    } catch {
        print("Unexpected error: \(error).")
    }
    //buing cecond item
    do {
        try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
        print("Success! Yum.")
    } catch VendingMachineError.invalidSelection {
        print("Invalid Selection.")
    } catch VendingMachineError.outOfStock {
        print("Out of Stock.")
    } catch VendingMachineError.insufficientFunds(let coinsNeed) {
        print("Insufficient funds. Please insert an additional \(coinsNeed) coins.")
    } catch {
        print("Unexpected error: \(error).")
    }

//Another way to catch several related errors is to list them after catch, separated by commas. For example:
//or
//var vendingMachine = VendingMachine()
//vendingMachine.coinsDeposited = 10
//do {
//	try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
//	print("Success! Yum.")
//} catch VendingMachineError.invalidSelection, VendingMachineError.insufficientFunds, VendingMachineError.outOfStock {
//	print("Invalid selection, out of stock, or not enough money.")
//}



//Using try? lets you write concise error handling code when you want to handle all errors in the same way. For example, the following code uses several approaches to fetch data, or returns nil if all of the approaches fail.

//func fetchData() -> Data? {
//	if let data = try? fetchDataFromDisk() { return data }
//	if let data = try? fetchDataFromServer() { return data }
//	return nil


//Specifying Cleanup Actions
//func processFile(filename: String) throws {
//	if exists(filename) {
//		let file = open(filename)
//		defer {
//			close(file)
//		}
//		while let line = try file.readline() {
//			// Work with the file.
//		}
//		// close(file) is called here, at the end of the scope.
//	}
//}
//The above example uses a defer statement to ensure that the open(_:) function has a corresponding call to close(_:).
 */

print("=============Concurrency========did not understand it at all(A swift tour)======")

print("============Type Casting===============")
/*
//Type Casting
//Type casting is a way to check the type of an instance, or to treat that instance as a different superclass or subclass from somewhere else in its own class hierarchy.
//Type casting in Swift is implemented with the is and as operators. These two operators provide a simple and expressive way to check the type of a value or cast a value to a different type.
//is used to check the type of a value whereas as is used to cast a value to a different type.
class MediaItem {
	var name: String
	 init(name: String) {
		self.name = name
	}
}
class Movie: MediaItem {
	var director: String
	init(name: String, director: String) {
		self.director = director
		super.init(name: name)
	}
}
class Song: MediaItem {
	var artist: String
	init(name: String, artist: String) {
		self.artist = artist
		super.init(name: name)
	}
}
let library = [
	Movie(name: "Casablanca", director: "Michael Curtiz"),
	Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
	Movie(name: "Citizen Kane", director: "Orson Welles"),
	Song(name: "The One And Only", artist: "Chesney Hawkes"),
	Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
]
// the type of "library" is inferred to be [MediaItem]
//The items stored in library are still Movie and Song instances behind the scenes. However, if you iterate over the contents of this array, the items you receive back are typed as MediaItem, and not as Movie or Song. In order to work with them as their native type, you need to check their type, or downcast them to a different type, as described below.


//Checking Type==
//Use the type check operator (is) to check whether an instance is of a certain subclass type. The type check operator returns true if the instance is of that subclass type and false if it’s not.
var movieCount: Int = 0
var songCount = 0

for item in library {
	if item is Movie {
       movieCount += 1
	} else if item is Song {
        songCount += 1
	}
}

print("Media library contains \(movieCount) movies and \(songCount) songs")

//item is Movie returns true if the current MediaItem is a Movie instance and false if it’s not

 
//Downcasting===
//A constant or variable of a certain class type may actually refer to an instance of a subclass behind the scenes. Where you believe this is the case, you can try to downcast to the subclass type with a type cast operator (as? or as!).Because downcasting can fail, the type cast operator comes in two different forms.
for items in library {
	if let movies = items as? Movie {
		print("Movie: \(movies.name),director. \(movies.director)")
	} else if let song = items as? Song {
		print("Song: \(song.name), by \(song.artist)")
	}
}

//Type Casting for Any and AnyObject
//Swift provides two special types for working with nonspecific types:
//Any can represent an instance of any type at all, including function types.
//AnyObject can represent an instance of any class type.

var things: [Any] = []
things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159)
things.append("hello")
things.append((3.0, 5.0)) // tuple of type (Double, Double)
things.append(Movie(name: "Ghostbusters", director: "Ivan Reitman"))
things.append( {(name: String) -> String in "Hello, \(name)"} ) //Closures

//To discover the specific type of a constant or variable that’s known only to be of type Any or AnyObject, you can use an is or as pattern in a switch statement’s cases

for thing in things {
	switch thing {
		case 0 as Int:
			print("zero as an Int")
		case 0 as Double:
			print("zero as a Double")
		case let someInt as Int:
			print("an integer value of \(someInt)")
		case let someDouble as Double where someDouble > 0:
			print("a positive double value of \(someDouble)")
		case is Double:
			print("some other double value that I don't want to print")
		case let someString as String:
			print("a string value of \"\(someString)\"")
		case let (x, y) as (Double, Double):
			print("an (x, y) point at \(x), \(y)")
		case let movie as Movie:
			print("a movie called \(movie.name), dir. \(movie.director)")
		case let stringConverter as (String) -> String:
			print(stringConverter("Michael"))
		default:
			print("something else")
	}
}
let tested = things.count
print(tested)
//The Any type represents values of any type, including optional types. Swift gives you a warning if you use an optional value where a value of type Any is expected. If you really do need to use an optional value as an Any value, you can use the as operator to explicitly cast the optional to Any, as shown below.
 
 let optionalNumber: Int? = 3
things.append(optionalNumber)        // Warning
things.append(optionalNumber as Any) // No warning
let teste = things.count
print(teste)
 */
print("============Nested Types===============")
/*
//In swift, Nested types are the types that we can nest other types in our type definitions. Generally, in swift enumerations are defined within a class or structure to support the functionality same way, by using nested types we can nest supporting classes, structures, enumerations within the definition of the type they support.

//Swift supports a multiple nested types in enumerations, classes, and structures. We can declare a nested class by defining one class and inside it we can declare one more class same thing we can follow for both structures and enumerations.

//a nested type is just one data type defined inside another, like this:
//struct Deck {
//    struct Card {  // private
//
//    }
//}
//Now rather than creating a new Card struct you would instead create a new Deck.Card because one is inside the other.
//If you want to re-enforce this, Swift lets you mark the inner type (Card above) as being private, which means it can only be used inside the Deck class – code from outside Deck can’t even see it.

 
//The BlackjackCard structure contains two nested enumeration types called Suit and Rank.
struct BlackjackCard {
	// nested Suit enumeration
	enum Suit: Character {
		case spades = "♠", hearts = "♡", diamonds = "♢", clubs = "♣"
	}

	// nested Rank enumeration
    enum Rank: Int {
        case two = 2, three, four, five, six, seven, eight, nine, ten
        case jack, queen, king, ace
        
        struct Values {
            let first: Int, second: Int?
        }
        var values: Values {
            switch self {
            case .ace:
               return Values(first: 1, second: 10)
            case .jack, .queen, .king:
               return Values(first: 10, second: nil)
            default:
               return Values(first: self.rawValue, second: nil)
            }
        }
    }

	// BlackjackCard properties and methods
    let suit: Suit
	let rank: Rank
   
	var description: String {   //this is comute property with just getter , need return
        get {
            var output = "suit is \(suit.rawValue),"
            output += " value is \(rank.values.first)"
		if let second = rank.values.second {
			output += " or \(second)"
		   }
            return output
        }
	}
}

let theAceOfSpades = BlackjackCard(suit: .spades, rank: .ace)
print("theAceOfSpades: \(theAceOfSpades.description)")
// Prints "theAceOfSpades: suit is ♠, value is 1 or 10"

let club = BlackjackCard( suit: .clubs, rank: .three)
print("theclub: \(club.description)")
//Referring to Nested Types
//To use a nested type outside of its definition context, prefix its name with the name of the type it’s nested within:

let heartsSymbol = BlackjackCard.Suit.hearts.rawValue
print("heartsSymbol is \(heartsSymbol)")
let four = BlackjackCard.Rank.four.rawValue
print("heartsSymbol is \(four)")
//=====

class Employee {
     init(details: Employee.Department = Department()) {
        self.details = details
    }
    var details = Department()
    
    class Department {  // this is private inear class inside outer class Employee
    var EmpId = 150
    var EmpName = "Suresh"
    func GetDetails() -> String {
    return "Id: \(self.EmpId), Name: \(self.EmpName)"
     }
   }
}

var employee = Employee()
print(employee.details.GetDetails())  // the other class is privat so cannot access it directly.
print ("Employee mane is \(employee.details.EmpName)")

//=====

class Student {
    
  enum StudentTypes {
     case Intelligent
     case Good
    }
     func name() -> StudentTypes {
     return .Intelligent
    }
}
class Teacher {
    init(type: Student.StudentTypes) {
        self.type = type
    }
    //or - Leave init empty
    //     init() {
    //     self.type = self.student.name()
       // }
    let student = Student()
    var type: Student.StudentTypes

}
var result = Student.StudentTypes.Good
    print(result)
//====
 */
print("==========Extenstion and Protocoal===in Extenstion======")


// no override, inheritance  in struct /////////////////////////////////////
//Extensions
//Extensions add new functionality to an existing class, structure, enumeration, or protocol type. This includes the ability to extend types for which you don’t have access to the original source code
 
// Notice the use of the mutating keyword in the declaration of Structure to mark a method that modifies the structure. The declaration of Class doesn’t need any of its methods marked as mutating because methods on a class can always modify the class.
 
//Extensions in Swift can:

//1-Add computed instance properties and computed type properties

//2-Define instance methods and type methods

//-3-Provide new initializers

//4-Define subscripts

//5-Define and use new nested types

//6-Make an existing type conform to a protocol

//If you define an extension to add new functionality to an existing type, the new functionality will be available on all existing instances of that type, even if they were created before the extension was defined.

/*
//extenstion to move whitspease//

    var qoutes =  "      The truth is rarely pure and never sipmple     "
   let trim = qoutes.trimmingCharacters(in: .whitespacesAndNewlines)
    print("1- \(trim)")
    //or
    extension String {
        func trimme () -> String {
            self.trimmingCharacters(in: .whitespacesAndNewlines)
        }
    }
let trimme = qoutes.trimme()
    print(trimme)

    extension String {
         mutating func trim () {
            self = self.trimme()
        }
    }
    qoutes.trim()
    print(trimme)
 


    extension String {
        func trimmed () -> String {
            self.trimmingCharacters(in: .whitespacesAndNewlines)
        }
        var lines: [String] {
            self.components(separatedBy: .newlines)
        }
    }
    var qoute = "      The truth is rarely pure and never sipmple     "
    let trimed = qoute.trimmed()
     print("2- \(trimed)")
    let lyrics = """
        But I keep crusing
        Can not stop rolling
        It is like I got this music in mu mind
        will not stop movewing
        """
print(lyrics.lines.count)
    print(lyrics)
 

//the best trick about swift is that i can use two inyizlier if i do that trick
struct Books {
	let title : String
	let pagecount : Int
	let readingHours: Int
    
	init(title: String ,pagecount: Int ) {
		self.title = title
		self.pagecount = pagecount
		self.readingHours = pagecount / 50
	}
}

let tested = Books(title: "Load", pagecount: 1224) // ready use by devalut
print(tested)
//to fix this is using extenstion inside a struct
// by doing that now I can use two initilizer
struct Book {
     init(title: String, pagecount: Int, readingHours: Int) {
        self.title = title
        self.pagecount = pagecount
        self.readingHours = readingHours
    }
    
	let title : String
	let pagecount : Int
	let readingHours: Int
}

extension Book {
		init(title: String ,pagecount: Int ) {
			self.title = title
			self.pagecount = pagecount
			self.readingHours = pagecount / 50
		}
	}
let lets = Book(title: "Load", pagecount: 1300,readingHours: 90)
//let lets = Book(title: "Load", pagecount: 1300)
print(lets)
//==================================================

    extension Collection {
        var isNotEmpty: Bool {
            isEmpty == false
        }
    }
    let guests = ["Mario", "Issa", "Ali"]
    if guests.isNotEmpty {
        print("Guest count:\(guests.count)")
    }
//===========================================
 
    protocol Person {
        var name: String {get}
        func sayHello()
    }
    extension Person {
        func sayHello() {
            print("Hi , I am \(name)")
        }
    }
    struct Emplyee: Person {
        var name: String
    }

 var tayllor = Emplyee(name: "hossam")
    tayllor.sayHello()
    tayllor.name = "Issa"
    tayllor.sayHello()
//===========================================

    protocol Device {
    var a: Int { get set }
    var b: Int { get set }
    }
     extension Device {
        func display() {
       print(" a = \(a), b = \(b)")
       }
    }
    struct Wiget: Device {
        var a = 10
        var b = 10
    init(start: Int) {
    a = start
    }
}
    let d = Wiget(start: 5)
    d.display()

    var somthing = Wiget(start: 40)
    somthing.display()

    var another = somthing
    print("somthing = \(somthing.a)")

    print ("make a change ")
    another.a = 70
    somthing.a = 60
    print("another = \(another.a)")
    print("something = \(somthing.a)")
    print ("================")
     another.display()
    print ("================")
//================

//Declaring Protocol Adoption with an Extension
//If a type already conforms to all of the requirements of a protocol, but hasn’t yet stated //that it adopts that protocol, you can make it adopt the protocol with an empty extension:
    protocol animal {
    var Description: String { get }
    }
    extension Hamster: animal {

    }
    struct Hamster {
    var name: String
    var Description: String {
    return "A hamster named \(name)"
    }
 }
//Instances of Hamster can now be used wherever TextRepresentable is the required type:

let simon = Hamster(name: "Simon")
print(simon.Description)

let something = simon
print(something.Description)
*/

print("==========Computed Properties====In Extention=====")
/*
//Stored properties store constant and variable values as part of an instance, whereas computed properties calculate (rather than store) a value. Computed properties are provided by classes, structures, and enumerations. Stored properties are provided only by classes and structures.


//Computed Properties
//Extensions can add computed instance properties and computed type properties to existing types. This example adds five computed instance properties to Swift’s built-in Double type, to provide basic support for working with distance units:

    extension Double {
        
    var km: Double { return self * 1_000.0 }
    var m: Double  { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
  }

let oneInch = 25.4.mm
    print("One inch is \(oneInch) meters")
    // Prints "One inch is 0.0254 meters"
    let threeFeet = 3.ft
    print("Three feet is \(threeFeet) meters")
    // Prints "Three feet is 0.914399970739201 meters"
    let oneMeter = 1.m
    print("One Meter  is \(oneMeter) meters")
    let FeetTo_oneMeter = 1000.ft
    print("to convert it from feet to meters. \(FeetTo_oneMeter) meters")

    let aMarathon = 42.km + 195.m
    print("A marathon is \(aMarathon) meters long")
// Prints "A marathon is 42195.0 meters long"

//Extensions can add new computed properties, but they can’t add stored properties, or add property observers to existing properties.
*/
print("==========Initializers====In Extention=====")
/*
//Extensions can add new initializers to existing types
struct Size {
	var width = 0.0, height = 0.0
}
struct Point {
	var x = 0.0, y = 0.0
}
struct Rect {
     init(origin: Point = Point(), size: Size = Size()) {
        self.origin = origin
        self.size = size
    }
    
	var origin = Point()
	var size = Size()
}
//Because the Rect structure provides default values for all of its properties, it receives a default initializer and a memberwise initializer automatically, as described in Default Initializers. These initializers can be used to create new Rect instances:
let defaultRect = Rect()
let memberwiseRect = Rect(origin: Point(x: 2.0, y: 2.0),
						    size: Size(width: 5.0, height: 5.0))
print("centerRect's origin is\(memberwiseRect.origin) and its size is \(memberwiseRect.size)")
//You can extend the Rect structure to provide an additional initializer that takes a specific center point and size:
extension Rect {
	init(center: Point, size: Size) {             // Delegation Initializer
		let originX = center.x - (size.width / 2)
		let originY = center.y - (size.height / 2)
		self.init(origin: Point(x: originX, y: originY), size: size)
	}
}
//This new initializer starts by calculating an appropriate origin point based on the provided center point and size value. The initializer then calls the structure’s automatic memberwise initializer init(origin:size:), which stores the new origin and size values in the appropriate properties:

let centerRect = Rect(center: Point(x: 4.0, y: 4.0),
					    size: Size(width: 3.0, height: 3.0))
print("centerRect's origin is\(centerRect.origin) and its size is \(centerRect.size)")
// centerRect's origin is (2.5, 2.5) and its size is (3.0, 3.0)

*/
print("========== Methods===and type mothed===In Extention=====")
/*
//Extensions can add new instance methods and type methods to existing types. The following example adds a new instance method called repetitions to the Int type:

extension retangle {
    func area () -> Double {
        return width * hight
    }
}
struct retangle {
    init(width: Double, hight: Double) {
        self.width = width
        self.hight = hight
    }
    init() {
    }
    var width = 10.0
    var hight = 10.0
}

var od = retangle()
print(od.area())
var di = retangle(width: 20 , hight: 20)
print(di.area())
*/
print("==========Mutating Instance Methods====In Extention=====")
/*
//a function that's been marked as mutating can change any property within its enclosing value. The word “value” is really key here, since Swift's concept of structured mutations only applies to value types, not to reference types like classes and actors

//Instance methods added with an extension can also modify (or mutate) the instance itself. Structure and enumeration methods that modify self or its properties must mark the instance method as mutating, just like mutating methods from an original implementation.
//
//The example below adds a new mutating method called square to Swift’s Int type, which squares the original value:
extension Int {
	mutating func square() {    // instance method
		self = self * self
	}
}
var someInt = 3
someInt.square()
print(" someInt is now \(someInt)")
// someInt is now 9
*/
print("==========Subscripts======In Extention=====")
/*
//Subscripts are used to access information from a collection, sequence and a list in Classes, Structures and Enumerations without using a method.
//These subscripts are used to store and retrieve the values with the help of index without the use of separate method


//Extensions can add new subscripts to an existing type. This example adds an integer subscript to Swift’s built-in Int type. This subscript [n] returns the decimal digit n places in from the right of the number:

//123456789[0] returns 9

//123456789[1] returns 8

//…and so on:
extension Int {
	subscript (digitIndex: Int) -> Int {
		var decimalBase = 1
		for _ in 0..<digitIndex {
			decimalBase *= 10
		}
		return (self / decimalBase) % 10
	}
}
print (746381295[0])
// returns 5
print (746381295[1])
// returns 9
print (746381295[2])
// returns 2
print (746381295[8])
// returns 7
//If the Int value doesn’t have enough digits for the requested index, the subscript implementation returns 0, as if the number had been padded with zeros to the left:

print (746381295[9])
// returns 0, as if you had requested:
print (0746381295[9])

//Subscripts with out Extention   // time table
struct Timetable {
	let mutiplier : Int
	 subscript(index: Int) -> Int {
         get {
		 mutiplier * index
        }
	}
}
let theretimestable = Timetable(mutiplier: 3)
print( "six time 3 is \(theretimestable[6])")

// or
struct timeTable {
     init(mutiplier: Int) {
        self.mutiplier = mutiplier
    }
    let mutiplier : Int
}
extension timeTable {
      func tiem (index: Int)-> Int {
       return  mutiplier * index
    }
}
let timestable = timeTable(mutiplier: 5)
print( "five time 5 is \(timestable.tiem(index: 5))")
//==

struct Student {
	var name: String
	var age :Int
	init(name: String, age: Int )  {
		self.name = name
		self.age = age
	}
}
extension Student {
	subscript (key: String)-> String {
		if key == "name" {
			return self.name
		}
		return ""
	}
}
var odj = Student(name: "hossam", age: 32)
print(odj.name)
print(odj["name"])
print(odj.age)
*/
print("==========Nested Types======In Extention=====")
/*
//Nested Types
//Extensions can add new nested types to existing classes, structures, and enumerations:

extension Int {
	enum Kind {
		case negative, zero, positive
	}
	var kind: Kind {
		switch self {
			case 0:
				return Kind.zero
			case let x where x > 0:
				return .positive
			default:
				return .negative
		}
	}
}
let testing = -1
print(testing.kind)
//The nested enumeration can now be used with any Int value:

//separator
//A string to print between each item. The default is a single space (" ").
//terminator
//The string to print after all items have been printed. The default is a newline ("\n").
func printIntegerKinds(_ numbers: [Int]) {
	for i in numbers {
        switch i.kind {
			case Int.Kind.negative:
            print("- ", terminator: "")
			case .zero:
				print("0 ", terminator: "")
			case .positive:
				print("+ ", terminator: "")
		}
	}
	print("\n")
}
printIntegerKinds([3, 19, -2, 0, -6, 0, 7])
// Prints "+ + - 0 - 0 + "
//
extension UserDefaults {
	enum keys {
		static let name = "name"
        static let score = "score"
	}
}
// create instance of userDefaults
let user = UserDefaults.standard
// store the value user initilze
user.set("hossam", forKey: UserDefaults.keys.name)
user.set(99, forKey: UserDefaults.keys.score)
//use
let achiveNmae = user.string(forKey: UserDefaults.keys.name) ?? ""
let achiveScore = user.integer(forKey: UserDefaults.keys.score)
//print
print("name is \(achiveNmae)")
print("score is \(achiveScore)")
*/
print("============Protocols=============")
/*
//Protocols
//A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality. The protocol can then be adopted by a class, structure, or enumeration to provide an actual implementation of those requirements. Any type that satisfies the requirements of a protocol is said to conform to that protocol.

//In addition to specifying requirements that conforming types must implement, you can extend a protocol to implement some of these requirements or to implement additional functionality that conforming types can take advantage of.


//Always prefix type property requirements with the static keyword when you define them in a protocol.
//protocol AnotherProtocol {
//	static var someTypeProperty: Int { get set }
//}


//The FullyNamed protocol requires a conforming type to provide a fully qualified name. The protocol doesn’t specify anything else about the nature of the conforming type—it only specifies that the type must be able to provide a full name for itself. The protocol states that any FullyNamed type must have a gettable instance property called fullName, which is of type String.

protocol FullyNamed {
	var fullName: String {get}     /// property in protocal must have set or get
}
struct Person: FullyNamed {
	var fullName: String
}
var john = Person(fullName: "hossam farfour")
print(john.fullName)
john.fullName = "Issa Farfour"
print(john.fullName)
//This matches the single requirement of the FullyNamed protocol, and means that Person has correctly conformed to the protocol. (Swift reports an error at compile time if a protocol requirement isn’t fulfilled.)

// more cpomplix example
class Starship: FullyNamed {
    
    init(prefix: String? = nil, name: String) {
        self.prefix = prefix
        self.name = name
    }
	var prefix: String?
	var name: String
	var fullName: String {
        return (prefix != nil ? prefix! + " ":" ") + name
	}
}
var ncc1701 = Starship(prefix: "hossam", name: "Enterprise")
print(ncc1701.fullName)

//This class implements the fullName property requirement as a computed read-only property for a starship. Each Starship class instance stores a mandatory name and an optional prefix. The fullName property uses the prefix value if it exists, and prepends it to the beginning of name to create a full name for the starship.


//Method Requirements
//Static method means which will exist as a single copy for a class. But instance methods exist as multiple copies depending on the number of instances created for that class.
//Static methods can be invoked by using class reference. Instance or non static methods are invoked by using object reference.
//1-Instance methods are functions that belong to instances of a particular class, structure, or enumeration
//2-You indicate type methods by writing the static keyword before the method’s func keyword. Classes can use the class keyword instead, to allow subclasses to override the superclass’s implementation of that method.

//Protocols can require specific instance methods and type methods to be implemented by conforming types. These methods are written as part of the protocol’s definition in exactly the same way as for normal instance and type methods, but without curly braces or a method body. Variadic parameters are allowed, subject to the same rules as for normal methods. Default values, however, can’t be specified for method parameters within a protocol’s definition.

//As with type property requirements, you always prefix type method requirements with the static keyword when they’re defined in a protocol. This is true even though type method requirements are prefixed with the class or static keyword when implemented by a class:
print ("example of type method")
protocol RandomNumber {
     static func random() -> Double          //static  method
}
class LinearCongruential: RandomNumber {
    
    static var lastRandom = 42.0
    static  let m = 139968.0
    static  let a = 3877.0
    static  let c = 29573.0
    class func random() -> Double {
       lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy: m))
       return lastRandom / m
    }
}
//let generator = LinearCongruentialGenerators()
print("Here's a random number: \(LinearCongruential.random())")
// Prints "Here's a random number: 0.3746499199817101"
print("And another one: \(LinearCongruential.random())")
// Prints "And another one: 0.729023776863283"

print ("example of instence method")

protocol RandomNumberGenerators {
	  func random() -> Double          //instance  method
}

//This protocol, RandomNumberGenerator, requires any conforming type to have an instance method called random, which returns a Double value whenever it’s called. Although it’s not specified as part of the protocol, it’s assumed that this value will be a number from 0.0 up to (but not including) 1.0
class LinearCongruentialGenerators: RandomNumberGenerators {

    var lastRandom = 42.0
	let m = 139968.0
	let a = 3877.0
	let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy: m))
		return lastRandom / m
	}
}

let generator = LinearCongruentialGenerators()
print("And : \(generator.lastRandom) ")
print("Here's a random number: \(generator.random())")
// Prints "Here's a random number: 0.3746499199817101"
print("And : \(generator.lastRandom) ")
print("And another one: \(generator.random())")
// Prints "And another one: 0.729023776863283"



//Mutating Method Requirements
//If you mark a protocol instance method requirement as mutating, you don’t need to write the mutating keyword when writing an implementation of that method for a class. The mutating keyword is only used by structures and enumerations.
protocol Togglable {
	mutating func toggle()
}
//The example below defines an enumeration called OnOffSwitch. This enumeration toggles between two states, indicated by the enumeration cases on and off. The enumeration’s toggle implementation is marked as mutating, to match the Togglable protocol’s requirements:

enum OnOffSwitch: Togglable {
	case off, on
	mutating func toggle() {
		switch self {
			case .off:
				self = .on
			case .on:
				self = .off
		}
	}
}
var lightSwitch = OnOffSwitch.off
print("1 \(lightSwitch)")
lightSwitch.toggle()
print("2 \(lightSwitch)")
// lightSwitch is now equal to .on


//Initializer Requirements
//Protocols can require specific initializers to be implemented by conforming types. You write these initializers as part of the protocol’s definition in exactly the same way as for normal initializers, but without curly braces or an initializer body:
protocol SomeProtocols {
	init(someParameter: Int)
}
//Class Implementations of Protocol Initializer Requirements
//You can implement a protocol initializer requirement on a conforming class as either a designated initializer or a convenience initializer. In both cases, you must mark the initializer implementation with the required modifier:

class SomeClass: SomeProtocols {
	required init(someParameter: Int) {
		// initializer implementation goes here
	}
}
//Required Initializers
//Write the required modifier before the definition of a class initializer to indicate that every subclass of the class must implement that initializer:

//You don’t have to provide an explicit implementation of a required initializer if you can satisfy the requirement with an inherited initializer.


//Failable Initializer Requirements
//Protocols can define failable initializer requirements for conforming types, as defined in Failable Initializers.
//
//A failable initializer requirement can be satisfied by a failable or nonfailable initializer on a conforming type. A nonfailable initializer requirement can be satisfied by a nonfailable initializer or an implicitly unwrapped failable initializer.

//Protocols as Types
//you can use a protocol in many places where other types are allowed, including:

//As a parameter type or return type in a function, method, or initializer

//As the type of a constant, variable, or property

//As the type of items in an array, dictionary, or other container

//Here’s an example of a protocol used as a data type:

protocol RandomNumberGenerator {
	func random() -> Double
}
class Dice {
	let sides: Int
	let generator: RandomNumberGenerator
    
    init(sides: Int, generator: RandomNumberGenerator) {
		self.sides = sides
		self.generator = generator
	}
	func roll() -> Int {
        return Int(generator.random() * Double(sides)) + 1 //0.3746499199817101*6+1=3
	}
}
//Here’s how the Dice class can be used to create a six-sided dice with a LinearCongruentialGenerator instance as its random number generator:
class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
	func random() -> Double {
		lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy: m))
		return lastRandom / m
	}
}
var d6 = Dice(sides: 6, generator: LinearCongruentialGenerator())
for _ in 1...5 {
	print("Random dice roll is \(d6.roll())")
}
 */
print("=========Delegation=======did not understand====in protocal==")
/*
//Delegation
//Delegation is a design pattern that enables a class or structure to hand off (or delegate) some of its responsibilities to an instance of another type. This design pattern is implemented by defining a protocol that encapsulates the delegated responsibilities, such that a conforming type (known as a delegate) is guaranteed to provide the functionality that has been delegated.
//Delegation can be used to respond to a particular action, or to retrieve data from an external source without needing to know the underlying type of that source.
protocol RandomNumberGenerators {
	func random() -> Double
}
class Dices {
	let sides: Int
	let generator: RandomNumberGenerators

	func roll() -> Int {
		return Int(generator.random() * Double(sides)) + 1
	}
	init(sides: Int, generator: RandomNumberGenerators) {
		self.sides = sides
		self.generator = generator
	}
}
protocol DiceGame {
	var dice: Dices {get}
	func play()
}
protocol DiceGameDelegate: AnyObject {
	func gameDidStart(_ game: DiceGame)
	func game(_ game: DiceGame, didStartNewTurnWithDiceRoll diceRoll: Int)
	func gameDidEnd(_ game: DiceGame)
}
//The DiceGame protocol is a protocol that can be adopted by any game that involves dice.


// just for that section the calss LinearCongruentialGenerator
class LinearCongruentialGenerator: RandomNumberGenerators {
	var lastRandom = 42.0
	let m = 139968.0
	let a = 3877.0
	let c = 29573.0
	func random() -> Double {
		lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy:m))
		return lastRandom / m
	}
}
class SnakesAndLadders: DiceGame {
	let finalSquare = 25
	let dice = Dices (sides: 6, generator: LinearCongruentialGenerator())
	var square = 0
	var board: [Int]
	init() {
		board = Array(repeating: 0, count: finalSquare + 1)
		board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
		board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
	}
	weak var delegate: DiceGameDelegate?
	func play() {
		square = 0
		delegate?.gameDidStart(self)
		gameLoop: while square != finalSquare {
			let diceRoll = dice.roll()
			delegate?.game(self, didStartNewTurnWithDiceRoll: diceRoll)
			switch square + diceRoll {
				case finalSquare:
					break gameLoop
				case let newSquare where newSquare > finalSquare:
					continue gameLoop
				default:
					square += diceRoll
					square += board[square]
			}
		}
		delegate?.gameDidEnd(self)
	}
}
class DiceGameTracker: DiceGameDelegate {
	var numberOfTurns = 0
	func gameDidStart(_ game: DiceGame) {
		numberOfTurns = 0
		if game is SnakesAndLadders {
			print("Started a new game of Snakes and Ladders")
		}
		print("The game is using a \(game.dice.sides)-sided dice")
	}
	func game(_ game: DiceGame, didStartNewTurnWithDiceRoll diceRoll: Int) {
		numberOfTurns += 1
		print("Rolled a \(diceRoll)")
	}
	func gameDidEnd(_ game: DiceGame) {
		print("The game lasted for \(numberOfTurns) turns")
	}
}
let tracker = DiceGameTracker()
let game = SnakesAndLadders()
game.delegate = tracker
game.play()
 */
print("====Adding Protocol Conformance with an Extension===")
/*
protocol RandomNumberGenerator {
	func random() -> Double
}
class Dice {
	let sides: Int
	let generator: RandomNumberGenerator
	init(sides: Int, generator: RandomNumberGenerator) {
		self.sides = sides
		self.generator = generator
	}
	func roll() -> Int {
		return Int(generator.random() * Double(sides)) + 1
	}
}
//Here’s how the Dice class can be used to create a six-sided dice with a LinearCongruentialGenerator instance as its random number generator:
class LinearCongruentialGenerator: RandomNumberGenerator {
	var lastRandom = 42.0
	let m = 139968.0
	let a = 3877.0
	let c = 29573.0
	func random() -> Double {
		lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy: m))
		return lastRandom / m
	}
}
//You can extend an existing type to adopt and conform to a new protocol, even if you don’t have access to the source code for the existing type. Extensions can add new properties, methods, and subscripts to an existing type, and are therefore able to add any requirements that a protocol may demand. For more about extensions
protocol TextRepresentable {
	var textualDescription: String { get }
}
//The Dice class from above can be extended to adopt and conform to TextRepresentable:

extension Dice: TextRepresentable {
	var textualDescription: String {
		return "A \(sides)-sided dice"
	}
}
//Any Dice instance can now be treated as TextRepresentable:
let d12 = Dice(sides: 12, generator: LinearCongruentialGenerator())
print(d12.textualDescription)
// Prints "A 12-sided dice"
for _ in 1...5 {
    print("Random dice roll is \(d12.roll())")
}
*/
print("===Adopting a Protocol Using a Synthesized Implementation===in protocoal==")
/*
//Swift can automatically provide the protocol conformance for Equatable, Hashable, and Comparable in many simple cases. Using this synthesized implementation means you don’t have to write repetitive boilerplate code to implement the protocol requirements yourself

struct Vector3D: Equatable { // comparesen
	var x = 0.0,
		y = 0.0,
		z = 0.0
}

let twoThreeFour = Vector3D (x: 2.0, y: 3.0, z: 4.0)
let anotherTwoThreeFour = Vector3D(x: 2.0, y: 3.0, z: 4.0)
if twoThreeFour == anotherTwoThreeFour {
	print("These two vectors are equivalent.")
}
else {
print("These two vectors are not equivalent.")
}

//Swift provides a synthesized implementation of Hashable for the following kinds of custom types:

//1-Structures that have only stored properties that conform to the Hashable protocol

//2-Enumerations that have only associated types that conform to the Hashable protocol

//3-Enumerations that have no associated types

//Swift provides a synthesized implementation of Comparable for enumerations that don’t have a raw value. If the enumeration has associated types, they must all conform to the Comparable protocol. To receive a synthesized implementation of <, declare conformance to Comparable in the file that contains the original enumeration declaration, without implementing a < operator yourself. The Comparable protocol’s default implementation of <=, >, and >= provides the remaining comparison operators.
enum SkillLevel: Comparable {
    case beginner
	case intermediate
	case expert (stars: Int)
}
var levels = [SkillLevel.intermediate, SkillLevel.beginner,
			 SkillLevel.expert(stars: 5), SkillLevel.expert(stars: 3)]
for level in levels.sorted() {
	print(level)
}
*/
print("==========Collections of Protocol Types=====in protocoal==")
/*
//A protocol can be used as the type to be stored in a collection such as an array or a dictionary, as mentioned in Protocols as Types. This example creates an array of TextRepresentable things:

protocol TextRepresentable {
    var textualDescription: String { get }
}
extension Hamster: TextRepresentable {

}
struct Hamster {
    var name: String
    var textualDescription: String {
        return "A hamster named \(name)"
    }
}

let simon = Hamster(name: "Simon")
//======

protocol RandomNumberGenerator {
    func random() -> Double
}
//The Dice class from above can be extended to adopt and conform to TextRepresentable:
extension Dice: TextRepresentable {
    var textualDescription: String {
        return "A \(sides)-sided dice"
    }
}
class Dice {
    let sides: Int
    let generator: RandomNumberGenerator  //protocol as the datatype
    init(sides: Int, generator: RandomNumberGenerator) {
        self.sides = sides
        self.generator = generator
    }
    func roll() -> Int {
        return Int(generator.random() * Double(sides)) + 1
    }
}
class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy: m))
        return lastRandom / m
    }
}


let d12 = Dice(sides: 12, generator: LinearCongruentialGenerator())
//
//now can use coolection
let things: [TextRepresentable] = [d12,simon]
//It’s now possible to iterate over the items in the array, and print each item’s textual description:
for thing in things {
    print(thing.textualDescription)
}
*/
print("==========Protocol Inheritance=====in protocoal==")
/*
 protocol Teacher {
   var name: String {get set}
   var education: String {get set}
   func userdetails()
 }

 protocol Department: Teacher {
   var dept: String {get set}
   func deptInfo()
 }

struct School : Department
  {
     var name: String = "Suresh Dasari"
     var education: String = "B.Tech"
     var dept: String = "Software"
     func userdetails() {
   print("Name: \(name), Education: \(education)")
   }
    
     func deptInfo() {
    print("Department: \(dept)")
    }
 }

 var ins = School()
 print(ins)
 ins.userdetails()
 ins.deptInfo()

*/
print("==========Class-Only Protocols=====in protocoal==")

//You can limit protocol adoption to class types (and not structures or enumerations) by adding the AnyObject protocol to a protocol’s inheritance list.

//protocol SomeClassOnlyProtocol: AnyObject, SomeInheritedProtocol {
//	// class-only protocol definition goes here
//}
//In the example above, SomeClassOnlyProtocol can only be adopted by class types. It’s a compile-time error to write a structure or enumeration definition that tries to adopt SomeClassOnlyProtocol.

print("==========Protocol Composition=====in protocoal==")
/*
//It can be useful to require a type to conform to multiple protocols at the same time. You can combine multiple protocols into a single requirement with a protocol composition. Protocol compositions behave as if you defined a temporary local protocol that has the combined requirements of all protocols in the composition. Protocol compositions don’t define any new protocol types.

//Protocol compositions have the form SomeProtocol & AnotherProtocol. You can list as many protocols as you need, separating them with ampersands (&). In addition to its list of protocols, a protocol composition can also contain one class type, which you can use to specify a required superclass.

//Here’s an example that combines two protocols called Named and Aged into a single protocol composition requirement on a function parameter:

    protocol Named {
        var name: String { get }
    }
    protocol Aged {
        var age: Int { get }
    }
    struct Person: Named, Aged {
        var name: String
        var age: Int
    }

func wishHappyBirthday(to celebrator: Named & Aged) {
        print("Happy birthday, \(celebrator.name), you're \(celebrator.age)!")
    }
let birthdayPerson = Person(name: "Malcolm", age: 21)
wishHappyBirthday(to: birthdayPerson)
    
// Prints "Happy birthday, Malcolm, you're 21!"

//Here’s an example that combines the Named protocol from the previous example with a Location class:

class Location {
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
	var latitude: Double
	var longitude: Double
}
class City: Location, Named {
	var name: String
	init(name: String, latitude: Double, longitude: Double) {
		self.name = name
		super.init(latitude: latitude, longitude: longitude)
	}
}
func beginConcert(_ locatedIn: Location & Named) {
    print("Hello, \(locatedIn.name)! + latitude \(locatedIn.latitude) ")
}

let seattle = City(name: "Newyork", latitude: 47.6, longitude: -122.3)
beginConcert(seattle)
// Prints "Hello, Seattle!"
*/
print("==========Checking for Protocol Conformance=====in protocoal==")
/*
//You can use the is and as operators described in Type Casting to check for protocol conformance, and to cast to a specific protocol. Checking for and casting to a protocol follows exactly the same syntax as checking for and casting to a type:
 
protocol HasArea {
	var area: Double { get }
}
//Here are two classes, Circle and Country, both of which conform to the HasArea protocol:
class Circle: HasArea {
	let pi = 3.1415927
	var radius: Double
	var area: Double {
        return  pi * radius * radius
    }
	init(radius: Double) {
		self.radius = radius
	}
}
class Country: HasArea {
	var area: Double
	init(area: Double) {
		self.area = area
	}
}
//Here’s a class called Animal, which doesn’t conform to the HasArea protocol:
class Animal {
	var legs: Int
	init(legs: Int) {
		self.legs = legs
	}
}
//The Circle, Country and Animal classes don’t have a shared base class. Nonetheless, they’re all classes, and so instances of all three types can be used to initialize an array that stores values of type AnyObject:

let objects: [AnyObject] = [
	Circle(radius: 2.0),
	Country(area: 243_610),
	Animal(legs: 4)
]
//The objects array can now be iterated, and each object in the array can be checked to see if it conforms to the HasArea protocol:

for object in objects {
	if let objectWithArea = object as? HasArea {
        print("Area is \(objectWithArea.area)")
	} else {
		print("Something that doesn't have an area")
	}
}
// Area is 12.5663708
// Area is 243610.0
// Something that doesn't have an area
*/
print("==========Optional Protocol Requirements=====in protocoal==")
/*
//Optional Protocol Requirements
//You can define optional requirements for protocols. These requirements don’t have to be implemented by types that conform to the protocol. Optional requirements are prefixed by the optional modifier as part of the protocol’s definition. Optional requirements are available so that you can write code that interoperates with Objective-C. Both the protocol and the optional requirement must be marked with the @objc attribute. Note that @objc protocols can be adopted only by classes that inherit from Objective-C classes or other @objc classes. They can’t be adopted by structures or enumerations.

//When you use a method or property in an optional requirement, its type automatically becomes an optional. For example, a method of type (Int) -> String becomes ((Int) -> String)?. Note that the entire function type is wrapped in the optional, not the method’s return value.

@objc protocol CounterDataSource {
	@objc optional func increment(forCount count: Int) -> Int  // method
	@objc optional var fixedIncrement: Int { get }            //property
}
class Counter {
	var count = 0
	var dataSource: CounterDataSource?
	func Increment() {     // method
        if let amount = dataSource?.increment?(forCount: count) {
			count += amount
		} else if let amount = dataSource?.fixedIncrement {
			count += amount
		}
	}
}
//Here’s a simple CounterDataSource implementation where the data source returns a constant value of 3 every time it’s queried. It does this by implementing the optional fixedIncrement property requirement:

class ThreeSource: CounterDataSource {
	let fixedIncrement = 3
}
//You can use an instance of ThreeSource as the data source for a new Counter instance:

var counter = Counter()
counter.dataSource = ThreeSource()
for _ in 1...4 {
	counter.Increment()
	print(counter.count)
}
//Here’s a more complex data source called TowardsZeroSource, which makes a Counter instance count up or down towards zero from its current count value:

//If count is already zero, the method returns 0 to indicate that no further counting should take place.
class TowardsZeroSource: CounterDataSource {
	func increment(forCount count: Int) -> Int {
		if count == 0 {
			return 0
		} else if count < 0 {
			return 1
		} else {
			return -1
		}
	}
}
var countingDown = Counter()
countingDown.count = -5
countingDown.dataSource = TowardsZeroSource()
for _ in 1...5 {
    countingDown.Increment()
	print(countingDown.count)
}
*/
print("===========Protocol Extensions=======in protocoal==")
/*
//Protocol Extensions
//Protocols can be extended to provide method, initializer, subscript, and computed property implementations to conforming types. This allows you to define behavior on protocols themselves, rather than in each type’s individual conformance or in a global function.
protocol RandomNumberGenerator {
	func random() -> Double
}

extension LinearGenerator :RandomNumberGenerator {
	func randomBool () -> Bool {
        return random() > 0.50
	}
}
//By creating an extension on the protocol, all conforming types automatically gain this method implementation without any additional modification.

class LinearGenerator
{
	var lastRandom = 42.0
	let m = 139968.0
	let a = 3877.0
	let c = 29573.0
	func random() -> Double {
		lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy: m))
		return lastRandom / m
	}
}
let generator = LinearGenerator()
print("Here's a random number: \(generator.random())")
// Prints "Here's a random number: 0.3746499199817101"
print("And here's a random Boolean: \(generator.randomBool())")
// Prints "And here's a random Boolean: true"


//Protocol extensions can add implementations to conforming types but can’t make a protocol extend or inherit from another protocol. Protocol inheritance is always specified in the protocol
//declaration itself.
*/
print("===========Providing Default Implementations=======in protocoal==")
/*
//You can use protocol extensions to provide a default implementation to any method or computed property requirement of that protocol. If a conforming type provides its own implementation of a required method or property, that implementation will be used instead of the one provided by the extension.

//Protocol requirements with default implementations provided by extensions are distinct from optional protocol requirements. Although conforming types don’t have to provide their own implementation of either, requirements with default implementations can be called without optional chaining.

//For example, the PrettyTextRepresentable protocol, which inherits the TextRepresentable protocol can provide a default implementation of its required prettyTextualDescription property to simply return the result of accessing the textualDescription property:


protocol TextRepresentable {
	 var textualDescription: String { get }
}
protocol PrettyTextRepresentable: TextRepresentable {
	 var Description: String { get }
}
extension PrettyTextRepresentable  {
	var Description: String {
		return textualDescription
	}
}
 
//==

protocol MyProtocol {
    static var name: String { get }
}

extension MyProtocol {
    static var name: String {
        return "unnamed"
    }
    static var nonRequired: String {
        return "nonRequired"
    }
}
class MyClass2: MyProtocol  {
    static var name: String {
        return "Specific name"
    }
    static var nonRequired: String {
        return "Specific"
    }
}

let myClass2 = MyClass2()
print (MyClass2.name ) // 0r type(of: myClass2).name
//print (type(of: myClass2).nonRequired )// "nonRequired"
print (MyClass2.nonRequired)
//==
protocol Action {
    func getMessage() -> String
}

extension Action {
    func getMessage() -> String {
        "I said... Bring me Mik!"
    }
}

struct MyAction: Action {
    func getMessage() -> String { "Bring me Hossam!" }
}
var test = MyAction()
print (test.getMessage())
 */
print("========Adding Constraints to Extensions====in protocoal==")
/*
//Adding Constraints to Protocol Extensions
//When you define a protocol extension, you can specify constraints that conforming types must satisfy before the methods and properties of the extension are available. You write these constraints after the name of the protocol you’re extending by writing a generic where clause.
//For example, you can define an extension to the Collection protocol that applies to any collection whose elements conform to the Equatable protocol. By constraining a collection’s elements to the Equatable protocol, a part of the standard library, you can use the == and != operators to check for equality and inequality between two elements.

extension Collection where Element: Equatable {
	func allEqual() -> Bool {
		for element in self {
            if element != self.first {
				return false
			}
		}
		return true
	}
}
//The allEqual() method returns true only if all the elements in the collection are equal.

//Consider two arrays of integers, one where all the elements are the same, and one where they aren’t:

let equalNumbers = [100, 100, 100, 100, 100]
let differentNumbers = [100, 100, 200, 100, 200]
//Because arrays conform to Collection and integers conform to Equatable, equalNumbers and differentNumbers can use the allEqual() method:
  for i in equalNumbers {
      if i != equalNumbers[0] {
        print("not equal")
    } else {
        print("equal")
    }
  }
print(equalNumbers.allEqual())
// Prints "true"
print(differentNumbers.allEqual())
// Prints "false"
for i in differentNumbers {
    if i != differentNumbers[0] {
      print("not equal")
  } else {
      print("equal")
  }
}
//If a conforming type satisfies the requirements for multiple constrained extensions that provide implementations for the same method or property, Swift uses the implementation corresponding to the most specialized constraints.
*/
print("=================Generics==============")
/*
//Generic code enables you to write flexible, reusable functions and types that can work with any type, subject to requirements that you define. You can write code that avoids duplication and expresses its intent in a clear, abstracted manner.

//The Problem That Generics Solve
//Here’s a standard, nongeneric function called swapTwoInts(_:_:), which swaps two Int values:

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
	let temp = a
	a = b
	b = temp
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")

//The swapTwoInts(_:_:) function is useful, but it can only be used with Int values. If you want to swap two String values, or two Double values, you have to write more functions, such as the swapTwoStrings(_:_:) and swapTwoDoubles(_:_:) functions shown below:

func swapTwoStrings(_ a: inout String, _ b: inout String) {
	let temporaryA = a
	a = b
	b = temporaryA
}

func swapTwoDoubles(_ a: inout Double, _ b: inout Double) {
	let temporaryA = a
	a = b
	b = temporaryA
}
//It’s more useful, and considerably more flexible, to write a single function that swaps two values of any type. Generic code enables you to write such a function. (A generic version of these functions is defined below.)

//====Generic Functions===
func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
	let temp = a
	a = b
	b = temp
}
//func swapTwoInts(_ a: inout Int, _ b: inout Int)
//func swapTwoValues<T>(_ a: inout T, _ b: inout T)
//The generic version of the function uses a placeholder type name (called T, in this case) instead of an actual type name (such as Int, String, or Double). The placeholder type name doesn’t say anything about what T must be, but it does say that both a and b must be of the same type T, whatever T represents. The actual type to use in place of T is determined each time the swapTwoValues(_:_:) function is called.
var some_Int = 3
var another_Int = 107
swapTwoValues(&some_Int, &another_Int)
print("some_Int is now \(some_Int), and another_Int is now \(another_Int)")
// someInt is now 107, and anotherInt is now 3

var someString = "hello"
var anotherString = "world"
swapTwoValues(&someString, &anotherString)
print("someString is now \(someString), and anotherString is now \(anotherString)")
// someString is now "world", and anotherString is now "hello"

 
//=========Type Parameters========
//In the swapTwoValues(_:_:) example above, the placeholder type T is an example of a type parameter. Type parameters specify and name a placeholder type, and are written immediately after the function’s name, between a pair of matching angle brackets (such as <T>).

//========Naming Type Parameters====
//In most cases, type parameters have descriptive names, such as Key and Value in Dictionary<Key, Value> and Element in Array<Element>, which tells the reader about the relationship between the type parameter and the generic type or function it’s used in. However, when there isn’t a meaningful relationship between them, it’s traditional to name them using single letters such as T, U, and V, such as T in the swapTwoValues(_:_:) function above.

//========Generic Types===========
//In addition to generic functions, Swift enables you to define your own generic types. These are custom classes, structures, and enumerations that can work with any type, in a similar way to Array and Dictionary.

//This section shows you how to write a generic collection type called Stack. A stack is an ordered set of values, similar to an array, but with a more restricted set of operations than Swift’s Array type. An array allows new items to be inserted and removed at any location in the array. A stack, however, allows new items to be appended only to the end of the collection (known as pushing a new value on to the stack). Similarly, a stack allows items to be removed only from the end of the collection (known as popping a value off the stack).

//Here’s how to write a nongeneric version of a stack, in this case for a stack of Int values:

struct IntStack {
	var items: [Int] = []
	mutating func push(_ item: Int) {
		items.append(item)
	}
	mutating func pop() -> Int {
        return items.removeLast()
	}
}
//Here’s a generic version of the same code:
struct Stack<Element> {
	var items: [Element] = []
	mutating func push(_ item: Element) {
		items.append(item)
	}
	mutating func pop() -> Element {
		return items.removeLast()
	}
}
//You create a new Stack instance by writing the type to be stored in the stack within angle brackets. For example, to create a new stack of strings, you write Stack<String>():
var stackOfStrings = Stack<String>()
stackOfStrings.push("uno")
stackOfStrings.push("dos")
stackOfStrings.push("tres")
print(stackOfStrings.items.count)
// the stack now contains 3 strings
stackOfStrings.push("cuatro")
print(stackOfStrings.items)
//stackOfStrings.pop()
//print(stackOfStrings.items)
let fromTheTop = stackOfStrings.pop() // to avoid warnning
 //romTheTop is equal to "cuatro", and the stack now contains 3 strings
print(stackOfStrings.items)
//print(fromTheTop)

///======Extending a Generic Type========
//The following example extends the generic Stack type to add a read-only computed property called topItem, which returns the top item on the stack without popping it from the stack:

extension Stack {
	var topItem: Element? {
		return items.isEmpty ? nil : items[items.count-1]
	}
}
//The topItem property returns an optional value of type Element. If the stack is empty, topItem returns nil; if the stack isn’t empty, topItem returns the final item in the items array.
//Note that this extension doesn’t define a type parameter list. Instead, the Stack type’s existing type parameter name, Element, is used within the extension to indicate the optional type of the topItem computed property.

//The topItem computed property can now be used with any Stack instance to access and query its top item without removing it.
if let topItem = stackOfStrings.topItem {
	print("The top item on the stack is \(topItem).")
}
//= remove item
//stackOfStrings.items.remove(at: 1)
//print(stackOfStrings.items)

//=====Type Constraints=====

//Type Constraint Syntax
//You write type constraints by placing a single class or protocol constraint after a type parameter’s name, separated by a colon, as part of the type parameter list. The basic syntax for type constraints on a generic function is shown below (although the syntax is the same for generic types):
//func someFunction <T: SomeClass, U: SomeProtocol> (someT: T, someU: U) {
//	// function body goes here
//}
//The hypothetical function above has two type parameters. The first type parameter, T, has a type constraint that requires T to be a subclass of SomeClass. The second type parameter, U, has a type constraint that requires U to conform to the protocol SomeProtocol.


//Type Constraints in Action
//Here’s a nongeneric function called findIndex(ofString:in:), which is given a String value to find and an array of String values within which to find it. The findIndex(ofString:in:) function returns an optional Int value, which will be the index of the first matching string in the array if it’s found, or nil if the string can’t be found:
func findIndex(of valueToFind: String, in array: [String]) -> Int? {
    for (index, value) in array.enumerated() {
		if value == valueToFind {
			return index
		}
	}
	return nil
}
//The findIndex(ofString:in:) function can be used to find a string value in an array of strings:

let strings = ["cat", "dog", "llama", "parakeet", "terrapin"]
if let foundIndex = findIndex(of: "llama",in: strings) {
	print("The index of llama is \(foundIndex)")
}

//The principle of finding the index of a value in an array isn’t useful only for strings, however. You can write the same functionality as a generic function by replacing any mention of strings with values of some type T instead.

//Here’s how you might expect a generic version of findIndex(ofString:in:), called findIndex(of:in:), to be written. Note that the return type of this function is still Int?, because the function returns an optional index number, not an optional value from the array. Be warned, though—this function doesn’t compile, for reasons explained after the example:

//func findIndex <T> (of valueToFind: T, in array:[T]) -> Int? {
//	for (index, value) in array.enumerated() {
//		if value == valueToFind {
//			return index
//		}
//	}
//	return nil
//}

//This function doesn’t compile as written above. The problem lies with the equality check, “if value == valueToFind”. Not every type in Swift can be compared with the equal to operator (==). If you create your own class or structure to represent a complex data model, for example, then the meaning of “equal to” for that class or structure isn’t something that Swift can guess for you. Because of this, it isn’t possible to guarantee that this code will work for every possible type T, and an appropriate error is reported when you try to compile the code.

//All is not lost, however. The Swift standard library defines a protocol called Equatable, which requires any conforming type to implement the equal to operator (==) and the not equal to operator (!=) to compare any two values of that type. All of Swift’s standard types automatically support the Equatable protocol.

//Any type that’s Equatable can be used safely with the findIndex(of:in:) function, because it’s guaranteed to support the equal to operator. To express this fact, you write a type constraint of Equatable as part of the type parameter’s definition when you define the function:

func findIndex<T: Equatable>(of valueToFind: T, in array:[T]) -> Int? {
    for (index, value) in array.enumerated() {
		if value == valueToFind {
			return index
		}
	}
	return nil
}
//The single type parameter for findIndex(of:in:) is written as T: Equatable, which means “any type T that conforms to the Equatable protocol.”

//The findIndex(of:in:) function now compiles successfully and can be used with any type that’s Equatable, such as Double or String:
let ints = [3.14159, 0.1, 0.25,12,45,3]
let doubleIndex = findIndex(of: 0.1, in: ints)
print("found \(String(describing: doubleIndex))")

let stringIndex = findIndex(of: "Andrea", in: ["Mike", "Malcolm", "Andrea"])
print("the index found  in \(String(describing: stringIndex))")
// stringIndex is an optional Int containing a value of 2
*/
print ("=======Associated Types======in protocal==")
/*
//When defining a protocol, it’s sometimes useful to declare one or more associated types as part of the protocol’s definition. An associated type gives a placeholder name to a type that’s used as part of the protocol. The actual type to use for that associated type isn’t specified until the protocol is adopted. Associated types are specified with the associatedtype keyword.

//Here’s an example of a protocol called Container, which declares an associated type called Item:
protocol Container {
	associatedtype Item     // we do not know that Item is // so use typealias Item = Int
	mutating func append(_ item: Item)
	var count: Int { get }
	subscript(i: Int) -> Item { get }
}
//T1-the Container protocol defines three required capabilities that any container must provide:

//2-It must be possible to add a new item to the container with an append(_:) method.

//3-It must be possible to access a count of the items in the container through a count property that returns an Int value.

//4-It must be possible to retrieve each item in the container with a subscript that takes an Int index value.

//.Here’s a version of the nongeneric IntStack type from Generic Types above, adapted to conform to the Container protocol:
struct IntStacks: Container {
	// original IntStack implementation
	var items: [Int] = []
	mutating func push(_ item: Int) {
		items.append(item)
	}
	mutating func pop() -> Int {
		return items.removeLast()
	}
	// conformance to the Container protocol
	typealias Item = Int
	mutating func append(_ item: Int) {
        self.push(item) //push(item)
	}
	var count: Int {
		return items.count
	}
	subscript(i: Int) -> Int {
		return items[i]
	}
}
//the IntStack type implements all three of the Container protocol’s requirements, and in each case wraps part of the IntStack type’s existing functionality to satisfy these requirements.

//Moreover, IntStack specifies that for this implementation of Container, the appropriate Item to use is a type of Int. The definition of typealias Item = Int turns the abstract type of Item into a concrete type of Int for this implementation of the Container protocol.

//Thanks to Swift’s type inference, you don’t actually need to declare a concrete Item of Int as part of the definition of IntStack. Because IntStack conforms to all of the requirements of the Container protocol, Swift can infer the appropriate Item to use, simply by looking at the type of the append(_:) method’s item parameter and the return type of the subscript. Indeed, if you delete the typealias Item = Int line from the code above, everything still works, because it’s clear what type should be used for Item.

//You can also make the generic Stack type conform to the Container protocol:
// no need for typealias with genaric
struct Stacks <Element>: Container {
	// original Stack<Element> implementation
	//or var Items = [Element]()
    var Items: [Element] = []
	
	mutating func push(_ item: Element) {
		Items.append(item)
	}
	mutating func pop() -> Element {
		return Items.removeLast()
	}
	// conformance to the Container protocol
	mutating func append(_ item: Element) {
		self.push(item)
	}
	var count: Int {
		return Items.count
	}
	subscript(i: Int) -> Element {
		return Items[i]
	}
}
//This time, the type parameter Element is used as the type of the append(_:) method’s item parameter and the return type of the subscript. Swift can therefore infer that Element is the appropriate type to use as the Item for this particular container.

var stackOf = Stacks<Int>()
stackOf.push(2)
stackOf.push(3)
print(stackOf.Items.count)
// the stack now contains 2 ints
stackOf.push(12)
stackOf.append(14)
print(stackOf.Items)
let from = stackOf.pop()
// fromTheTop is equal to "cuatro", and the stack now contains 3 strings
print("removing \(from)")
print(stackOf.Items)

//==========

//Extending an Existing Type to Specify an Associated Type
//You can extend an existing type to add conformance to a protocol, as described in Adding Protocol Conformance with an Extension. This includes a protocol with an associated type.

//Swift’s Array type already provides an append(_:) method, a count property, and a subscript with an Int index to retrieve its elements. These three capabilities match the requirements of the Container protocol. This means that you can extend Array to conform to the Container protocol simply by declaring that Array adopts the protocol. You do this with an empty extension, as described in Declaring Protocol Adoption with an Extension:
//
//extension Array: Container {}

//Array’s existing append(_:) method and subscript enable Swift to infer the appropriate type to use for Item, just as for the generic Stack type above. After defining this extension, you can use any Array as a Container.

//=================
//Adding Constraints to an Associated Type

//You can add type constraints to an associated type in a protocol to require that conforming types satisfy those constraints. For example, the following code defines a version of Container that requires the items in the container to be equatable.

//protocol Container {
//	associatedtype Item: Equatable
//	mutating func append(_ item: Item)
//	var count: Int { get }
//	subscript(i: Int) -> Item { get }
//}
//To conform to this version of Container, the container’s Item type has to conform to the Equatable protocol.
//================

//Using a Protocol in Its Associated Type’s Constraints==============
//A protocol can appear as part of its own requirements. For example, here’s a protocol that refines the Container protocol, adding the requirement of a suffix(_:) method. The suffix(_:) method returns a given number of elements from the end of the container, storing them in an instance of the Suffix type.
protocol Containerd {
    associatedtype Item
    mutating func append(_ item: Item)
    var count: Int { get }
    subscript(i: Int) -> Item { get }
}
protocol fixableContainer: Containerd {
    associatedtype fix: fixableContainer where fix.Item == Item
    func fixs(to size: Int) -> fix
}
extension Stacks: fixableContainer {
	func fixs(to size: Int) -> Stacks {
		var result = Stacks()
        for i in (count - size)..<count {  // comes from the protocal 6-3 = 3 items
			result.append(self[i])
		}
		return result
	}
	// Inferred that fix is Stacks.
}
var stackOfInt = Stacks<Int>()     //generic
stackOfInt.append(10)
stackOfInt.append(20)
stackOfInt.append(30)
stackOfInt.append(40)
stackOfInt.append(50)
stackOfInt.append(60)
print(" stacks contains \(stackOfInt.count) items")
let fixed = stackOfInt.fixs(to: 3)
print(fixed.Items)
print(fixed.count)
// fixed contains 40 , 50 and 60

//==
//In the example above, the fixed associated type for Stack is also Stack, so the fixed operation on Stack returns another Stack. Alternatively, a type that conforms to fixableContainer can have a fixed type that’s different from itself—meaning the fixed operation can return a different type. For example, here’s an extension to the nongeneric IntStack type that adds SuffixableContainer conformance, using Stack<Int> as its fixed type instead of IntStack:
//with non generic
extension IntStacks: fixableContainer {
	func fixs (to size: Int) -> IntStacks {
		var result = IntStacks()
		for index in (count-size)..<count {
			result.append(self[index])
		}
		return result
	}
	// Inferred that Suffix is Stack<Int>.
}
print("================")
var stackOfs = IntStacks()
stackOfs.push(9)
stackOfs.push(7)
stackOfs.push(8)
print("the stack now contains \(stackOfs.items.count)")
print(stackOfs.items)
let froms = stackOfs.pop()
// fromTheTop is equal to "cuatro", and the stack now contains 3 strings
print("removing \(froms)")
print(stackOfs.items)

var IntS = IntStacks()
IntS.append(90)
IntS.append(60)
IntS.append(20)
let fixing = IntS.fixs(to: 2)
print(fixing.items)
//fix contains 60 and 20
//=====================================end


//==========Generic Where Clauses===============
//Type constraints, as described in Type Constraints, enable you to define requirements on the type parameters associated with a generic function, subscript, or type.

//It can also be useful to define requirements for associated types. You do this by defining a generic where clause. A generic where clause enables you to require that an associated type must conform to a certain protocol, or that certain type parameters and associated types must be the same.

//The two containers to be checked don’t have to be the same type of container (although they can be), but they do have to hold the same type of items. This requirement is expressed through a combination of type constraints and a generic where clause:

protocol Contant {
    associatedtype Item
	mutating func append(_ item: Item)
	var count: Int { get }
	subscript(i: Int) -> Item { get }
}

extension Array:  Contant { } ////Extending an Existing Type to Specify an Associated Type/////
//You can extend an existing type to add conformance to a protocol, as described in Adding Protocol Conformance with an Extension. This includes a protocol with an associated type.
//

struct STACK<Element>:  Contant  {
	// original Stack<Element> implementation
	//var Items = [Element]()
	//or
    var Items: [Element] = []
	mutating func push(_ item: Element) {
		Items.append(item)
	}
	mutating func pop() -> Element {
		return Items.removeLast()
	}
	// conformance to the content protocol
	mutating func append(_ item: Element) {
		self.push(item)
	}
	var count: Int {
		return Items.count
	}
	subscript(i: Int) -> Element {
		return Items[i]
	}
}
func allItemsMatch <C1: Contant, C2: Contant>(_ someContainer: C1, _ anotherContainer: C2) -> Bool
where C1.Item == C2.Item, C2.Item: Equatable {

	// Check that both containers contain the same number of items.
	if someContainer.count != anotherContainer.count {    // to avoid run time error
		print("both container do not have the same amount of Items")
		return false
	}
	// Check each pair of items to see if they're equivalent.
	for i in 0..<someContainer.count {
		if someContainer[i] != anotherContainer[i] {
			return false
		}
	}
	// All items match, so return true.
	return true
}
var StackOfStrings = STACK<String>()
StackOfStrings.push("uno")
StackOfStrings.push("dos")
StackOfStrings.push("tres")


var ArrayOfStrings = ["uno", "dos", "tres"]  // extenstiom array of contect needed

if allItemsMatch(StackOfStrings, ArrayOfStrings) {
	print("All items match......")
} else {
	print("Not all items match....... ")
}

//=============================end

//Extensions with a Generic Where Clause
//You can also use a generic where clause as part of an extension. The example below extends the generic Stack structure from the previous examples to add an isTop(_:) method.

extension STACK where Element: Equatable {
    
//    var topItem: Element? {
//        return Items.isEmpty ? nil : Items[Items.count-1]
//    }
    //OR
        func isTop(_ item: Element) -> Bool {
            guard let topItem = Items.last else {
                return false
            }
            return topItem == item  // need Equatable extension
        }

}

//This new isTop(_:) method first checks that the stack isn’t empty, and then compares the given item against the stack’s topmost item. If you tried to do this without a generic where clause, you would have a problem: The implementation of isTop(_:) uses the == operator, but the definition of Stack doesn’t require its items to be equatable, so using the == operator results in a compile-time error. Using a generic where clause lets you add a new requirement to the extension, so that the extension adds the isTop(_:) method only when the items in the stack are equatable.

if StackOfStrings.isTop("tres") {
	print("Top element is tres.")
} else {
	print("Top element is something else.")
}
//or
//if let topItem = StackOfStrings.topItem {
//    print("The top item on the stack is \(topItem).")
//}


//If you try to call the isTop(_:) method on a stack whose elements aren’t equatable, you’ll get a compile-time error.

//You can use a generic where clause with extensions to a protocol. The example below extends the Container protocol from the previous examples to add a startsWith(_:) method.

extension Contant where Item: Equatable {
	func startsWith(_ item: Item) -> Bool {
		return count >= 1 && self[0] == item
	}
}

//The startsWith(_:) method first makes sure that the container has at least one item, and then it checks whether the first item in the container matches the given item. This new startsWith(_:) method can be used with any type that conforms to the Container protocol, including the stacks and arrays used above, as long as the container’s items are equatable.

// it does need to conform to extension Array:  Contant { } // protocoal Content
var SomeArray = ["un", "dos", "tres"]
if SomeArray.startsWith("uno") {
    print("Starts with uno.")
} else {
    print("Starts with something else.")
}
//or
if ["uno", "dos","tres"] .startsWith("uno") {
	print("Starts with uno.")
} else {
	print("Starts with something else.")
}


//The generic where clause in the example above requires Item to conform to a protocol, but you can also write a generic where clauses that require Item to be a specific type. For example:

extension Contant where Item == Double {
	func average() -> Double {
		var sum = 0.0
		for i in 0..<count {
			sum += self[i]
		}
		return sum / Double(count)
	}
}
let testing = [100.0, 20.0, 80.0, 100.0]
print("average is \(testing.average())")

//You can include multiple requirements in a generic where clause that’s part of an extension, just like you can for a generic where clause that you write elsewhere. Separate each requirement in the list with a comma.

//==========================


//===============Contextual Where Clauses============
//You can write a generic where clause as part of a declaration that doesn’t have its own generic type constraints, when you’re already working in the context of generic types. For example, you can write a generic where clause on a subscript of a generic type or on a method in an extension to a generic type. The Container structure is generic, and the where clauses in the example below specify what type constraints have to be satisfied to make these new methods available on a container.

extension Contant {
	func average() -> Double where Item == Int {
		var sum = 0.0
		for index in 0..<count {
			sum += Double(self[index])
		}
		return sum / Double(count)
	}
	func endsWith(_ item: Item) -> Bool where Item: Equatable {
		return count >= 1 && self[count-1] == item
	}
}
let numbers = [1260, 1200.0, 98, 37.0]
print(numbers.average())
// Prints "648.75"
print(numbers.endsWith(37))
// Prints "true"


//If you want to write this code without using contextual where clauses, you write two extensions, one for each generic where clause. The example above and the example below have the same behavior.
extension Contant where Item == Int, Item: Equatable {
	func averages() -> Double {
		var sum = 0.0
		for index in 0..<count {
			sum += Double(self[index])
		}
		return sum / Double(count)
	}
    
    func endsWiths(_ item: Item) -> Bool {
        return count >= 1 && self[count-1] == item
    }
}
let numberss = [1260, 1200, 98, 60]
print(numberss.averages())
// Prints "648.75"
print(numberss.endsWiths(60))
// Prints "true"

*/
print("=====Associated Types with a Generic Where Clause==")
/*
//You can include a generic where clause on an associated type. For example, suppose you want to make a version of Container that includes an iterator, like what the Sequence protocol uses in the standard library. Here’s how you write that:

protocol Contant {
    associatedtype Item
    mutating func append(_ item: Item)
    var count: Int { get }
    subscript(i: Int) -> Item { get }
}

protocol Containersss {
	associatedtype someItem
	mutating func append(_ item: someItem)
	var count: Int { get }
	subscript(i: Int) -> someItem { get }

    associatedtype Iteratoring: IteratorProtocol where Iteratoring.Element == someItem
	func makeIterator() -> Iteratoring
}
//The generic where clause on Iterator requires that the iterator must traverse over elements of the same item type as the container’s items, regardless of the iterator’s type. The makeIterator() function provides access to a container’s iterator.

//For a protocol that inherits from another protocol, you add a constraint to an inherited associated type by including the generic where clause in the protocol declaration. For example, the following code declares a ComparableContainer protocol that requires Item to conform to Comparable:

protocol ComparableContainer: Contant where Item: Comparable { }

*/
print("=========Generic Subscripts==========")
/*
//Subscripts can be generic, and they can include generic where clauses. You write the placeholder type name inside angle brackets after subscript, and you write a generic where clause right before the opening curly brace of the subscript’s body. For example:

protocol Contant {
    associatedtype Item
    mutating func append(_ item: Item)
    var count: Int { get }
    subscript(i: Int) -> Item { get }
}

extension Contant {
	subscript<Indices: Sequence>(indices: Indices) -> [Item] where Indices.Iterator.Element == Int {
		var result: [Item] = []
		for i in indices {
			result.append(self[i])
		}
		return result
	}
}
//A sequence is a list of values that you can step through one at a time. Swift sequences are one of the most fundamental concepts present in the language and we can use it to create custom collection types.
*/
print ("====protocol IteratorProtocol===and protocol Sequence========")
/*
print ("protocol Sequence===========")
//A type that provides sequential, iterated access to its elements.
let oneTwoThree = 1...3
for number in oneTwoThree {
    print("number is \(number)")
}

struct test: Sequence,IteratorProtocol {
    var count: Int
    mutating func next() -> Int? {
        if count == 0 {
            return nil
        } else {
        defer { count -= 1 }  //A defer statement is used for executing code just before transferring                    program control outside of the scope that the statement appears in.
           
            return count
        }
    }
}
 
let threeToGo = test(count: 4)
for i in threeToGo {
    print(i)
}
//==
*/
print ("protocol IteratorProtocol===========")
/*
//A type that supplies the values of a sequence one at a time.

//The IteratorProtocol protocol is tightly linked with the Sequence protocol. Sequences provide access to their elements by creating an iterator, which keeps track of its iteration process and returns one element at a time as it advances through the sequence.

//Whenever you use a for-in loop with an array, set, or any other collection or sequence, you're using that type's iterator. Swift uses a sequence's or collection's iterator internally to enable the for-in loop language construct.

//Using a sequence's iterator directly gives you access to the same elements in the same order as iterating over that sequence using a for-in loop. For example, you might typically use a for-in loop to print each of the elements in an array.

let animals = ["Antelope", "Butterfly", "Camel", "Dolphin"]
for animal in animals {
    print(animal)
}
//Behind the scenes, Swift uses the animals array's iterator to loop over the contents of the array.
var animalIterator = animals.makeIterator()
while let animal = animalIterator.next() {
    print(animal)
}
 */
print("=============Opaque Types==============")
/*
//1- it hide impelmentation details
//2-function impelmentation pick up/decide which type
//3-can change type in the future

func getRandomNumber () -> some Equatable {  // some specific kind of Equatable ,
	Int.random(in: 1...6)  // some knows now it is Int
}
func getRandomBool () ->  some Equatable {
	Bool.random()
}
print(getRandomNumber() == getRandomNumber())



func getData() ->  some Collection { // will get an error but adding some(Opaque) will solve the issue
	return [1,2,3,4]
}
let test = getData()
print (test.count)
// with Opaque type i can chage my return type later if i wanted to like here change to disctionry
 func Data() -> some Collection {
	return ["One":1 , "Two":2]
}
let tests = Data()
print ("count is \(tests.count)")
//======

func get () -> some Collection {
    return [1,2,3,4]
    }
    let data = get()
    let element = data.randomElement()
    print("element are \(element!)")

func getOneTypeOfValue () -> some Equatable {
     return 0  // even I chnage to string will now work because compiler cant assume it will return the same type in the future.
}
    let firstvalue = getOneTypeOfValue()
    let secodvlaue = getOneTypeOfValue()
    // now i can compare them by Opaque
   let did = firstvalue == secodvlaue
   print("here \(did)")
func getAnotherTypeOfValue () -> some Equatable {
    return 1
}
let thirdValue = getAnotherTypeOfValue()
//  I can see the diffrent retuyrn type  but i will get error because must be string return type and must be same type //
// firstvalue == thirdValue


//A function or method with an opaque return type hides its return value’s type information. Instead of providing a concrete type as the function’s return type, the return value is described in terms of the protocols it supports. Hiding type information is useful at boundaries between a module and code that calls into the module, because the underlying type of the return value can remain private. Unlike returning a value whose type is a protocol type, opaque types preserve type identity—the compiler has access to the type information, but clients of the module don’t.

////The Problem That Opaque Types Solve
//For example, suppose you’re writing a module that draws ASCII art shapes. The basic characteristic of an ASCII art shape is a draw() function that returns the string representation of that shape, which you can use as the requirement for the Shape protocol:

protocol Shape {
	 func draw() -> String
}
struct Triangle: Shape {
	var size: Int
	func draw() -> String {
		var result: [String] = []
		for length in 1...size {
			result.append(String(repeating: "*", count: length))
		}
		return result.joined(separator: "\n")
	}
}
let smallTriangle = Triangle(size: 4)
print(smallTriangle.draw())

//You could use generics to implement operations like flipping a shape vertically, as shown in the code below. However, there’s an important limitation to this approach: The flipped result exposes the exact generic types that were used to create it.
struct FlippedShape<T: Shape> : Shape {
	var shapes: T
	func draw() -> String {
		print("======")
        let lines = shapes.draw().split(separator: "\n")
		return lines.reversed().joined(separator: "\n")
	}
}
let flippedTriangle = FlippedShape(shapes: smallTriangle)
print(flippedTriangle.draw())

//This approach to defining a JoinedShape<T: Shape, U: Shape> structure that joins two shapes together vertically, like the code below shows, results in types like JoinedShape<FlippedShape<Triangle>, Triangle> from joining a flipped triangle with another triangle.

struct JoinedShape<T: Shape, U: Shape>: Shape {
	var top: T
	var bottom: U
	func draw() -> String {
		return top.draw() + "\n" + bottom.draw()  //+ jomed to new line after count
	}
}
let joinedTriangles = JoinedShape(top: smallTriangle, bottom: flippedTriangle)
print(joinedTriangles.draw())
//


//====Returning an Opaque Type====
//You can think of an opaque type like being the reverse of a generic type. Generic types let the code that calls a function pick the type for that function’s parameters and return value in a way that’s abstracted away from the function implementation. For example, the function in the following code returns a type that depends on its caller:

//func max<T>(_ x: T, _ y: T) -> T where T: Comparable { ... }

//Those roles are reversed for a function with an opaque return type. An opaque type lets the function implementation pick the type for the value it returns in a way that’s abstracted away from the code that calls the function. For example, the function in the following example returns a trapezoid without exposing the underlying type of that shape.

struct Square: Shape {
	var size: Int
	func draw() -> String {
		let line = String(repeating: "* ", count: size)
		let result = Array<String> (repeating: line, count: size)
		return result.joined(separator: "\n")
	}
}

func makeTrapezoid() -> some Shape {
	let top = Triangle(size: 2)
	let middle = Square(size: 5)
	let bottom = FlippedShape(shapes: top)
	let trapezoid = JoinedShape(
		top: top,
		bottom: JoinedShape(top: middle, bottom: bottom)
	)
	return trapezoid
}
let trapezoids = makeTrapezoid()
print(trapezoids.draw())

//You can also combine opaque return types with generics. The functions in the following code both return a value of some type that conforms to the Shape protocol.

func join<T: Shape, U: Shape>(_ tops: T, _ bottoms: U) -> some Shape {
    return JoinedShape(top: tops, bottom: bottoms)
}
func flip<T: Shape>(_ shaped: T) -> some Shape {
	return FlippedShape(shapes: shaped)
}

//The value of opaqueJoinedTriangles in this example is the same as joinedTriangles in the generics example
let opaqueJoinedTriangles = join(smallTriangle, flip(smallTriangle))
print(opaqueJoinedTriangles.draw())
// *
// **
// ***
// ***
// **
// *

//If a function with an opaque return type returns from multiple places, all of the possible return values must have the same type. For a generic function, that return type can use the function’s generic type parameters, but it must still be a single type. For example, here’s an invalid version of the shape-flipping function that includes a special case for squares:

//func invalidFlip<T: Shape>(_ shape: T) -> some Shape {
//	if shape is Square {
//        return shape // Error: return types don't match
//	}
//    return FlippedShape(shapes: shape) // Error: return types don't match
//}
//If you call this function with a Square, it returns a Square; otherwise, it returns a FlippedShape. This violates the requirement to return values of only one type and makes invalidFlip(_:) invalid code. One way to fix invalidFlip(_:) is to move the special case for squares into the implementation of FlippedShape, which lets this function always return a FlippedShape value:

struct FlippedShapes<T: Shape>: Shape {
	var shape: T
	func draw() -> String {
		if shape is Square {
			return shape.draw()
		}
		let lines = shape.draw().split(separator: "\n")
		return lines.reversed().joined(separator: "\n")
	}
}
let flipped = FlippedShape(shapes: smallTriangle)
print(flipped.draw())
//The requirement to always return a single type doesn’t prevent you from using generics in an opaque return type. Here’s an example of a function that incorporates its type parameter into the underlying type of the value it returns:

func  `repeat` <T: Shape> (shape: T, count: Int) -> some Collection {
	return Array<T>(repeating: shape, count: count)
}
//In this case, the underlying type of the return value varies depending on T: Whatever shape is passed it, repeat(shape:count:) creates and returns an array of that shape. Nevertheless, the return value always has the same underlying type of [T], so it follows the requirement that functions with opaque return types must return values of only a single type.


//==========Differences Between Opaque Types and Protocol Types=====
//Returning an opaque type looks very similar to using a protocol type as the return type of a function, but these two kinds of return type differ in whether they preserve type identity. An opaque type refers to one specific type, although the caller of the function isn’t able to see which type; a protocol type can refer to any type that conforms to the protocol. Generally speaking, protocol types give you more flexibility about the underlying types of the values they store, and opaque types let you make stronger guarantees about those underlying types.

//For example, here’s a version of flip(_:) that uses a protocol type as its return type instead of an opaque return type:

//..This version of protoFlip(_:) has the same body as flip(_:), and it always returns a value of the same type. Unlike flip(_:), the value that protoFlip(_:) returns isn’t required to always have the same type—it just has to conform to the Shape protocol. Put another way, protoFlip(_:) makes a much looser API contract with its caller than flip(_:) makes. It reserves the flexibility to return values of multiple types:


func protoFlip<T: Shape>(_ shape: T) -> Shape {
	if shape is Square {
		return shape
	}
	return FlippedShape(shapes: shape)
}



//In contrast, opaque types preserve the identity of the underlying type. Swift can infer associated types, which lets you use an opaque return value in places where a protocol type can’t be used as a return value. For example, here’s a version of the Container protocol from Generics:

protocol Container {
	associatedtype Item
	var count: Int { get }
	subscript(i: Int) -> Item { get }
}
extension Array: Container { }

//You can’t use Container as the return type of a function because that protocol has an associated type. You also can’t use it as constraint in a generic return type because there isn’t enough information outside the function body to infer what the generic type needs to be.

// Error: Protocol with associated types can't be used as a return type.
//func makeProtocolContainer<T>(item: T) -> Container {
//	return [item]
//}

// Error: Not enough information to infer C.
//func makeProtocolContainer<T, C: Container> (item: T) -> C {
//	return [item]
//}

//Using the opaque type some Container as a return type expresses the desired API contract—the function returns a container, but declines to specify the container’s type:

func makeOpaqueContainer<T>(item: T) -> some Container {
	return [item]
}
let opaqueContainer = makeOpaqueContainer(item: 12) // 12 is Int
let twelve = opaqueContainer[0]
print(type(of: twelve))
// Prints "Int"

//The type of twelve is inferred to be Int, which illustrates the fact that type inference works with opaque types. In the implementation of makeOpaqueContainer(item:), the underlying type of the opaque container is [T]. In this case, T is Int, so the return value is an array of integers and the Item associated type is inferred to be Int. The subscript on Container returns Item, which means that the type of twelve is also inferred to be Int.

protocol product {
    associatedtype code
    var productcode: code {get}
    func description () -> String
}
struct Laptop : product {
    typealias code = String
    var productcode: String
    
    func description () -> String {
        "this is a laptop"
    }
}
struct keyboard : product {
    var productcode: Int
    typealias code = Int
    
    func description () -> String {
        "this is a keyboard"
    }
}
struct factory {
    func makeProduct () -> some product {
        return Laptop (productcode: "testing")
    }
}
let tes = Laptop(productcode: "tested")
print(tes.description())
print(tes.productcode)
*/
print("=============Automatic Reference Counting==============")
/*
//Swift uses Automatic Reference Counting (ARC) to track and manage your app’s memory usage. In most cases, this means that memory management “just works” in Swift, and you don’t need to think about memory management yourself. ARC automatically frees up the memory used by class instances when those instances are no longer needed.

//Reference counting applies only to instances of classes. Structures and enumerations are value types, not reference types, and aren’t stored and passed by reference.

///ARC in Action
//Here’s an example of how Automatic Reference Counting works. This example starts with a simple class called Person, which defines a stored constant property called name:
class person  {
	let name: String
	init(name: String) {
		self.name = name
		print("\(name) is being initialized")
	}
	deinit {
		print("\(name) is being deinitialized")
	}
}
//The next code snippet defines three variables of type Person?, which are used to set up multiple references to a new Person instance in subsequent code snippets. Because these variables are of an optional type (Person?, not Person), they’re automatically initialized with a value of nil, and don’t currently reference a Person instance.
var reference1: person? = person (name: "Hossam Farfour")
var reference2 = reference1
var reference3: person? = person (name: " Issa")


//Because the new Person instance has been assigned to the reference1 variable, there’s now a strong reference from reference1 to the new Person instance. Because there’s at least one strong reference, ARC makes sure that this Person is kept in memory and isn’t deallocated.
//If you assign the same Person instance to two more variables, two more strong references to that instance are established:

//There are now three strong references to this single Person instance.

//If you break two of these strong references (including the original reference) by assigning nil to two of the variables, a single strong reference remains, and the Person instance isn’t deallocated:

reference1 = nil   //lost strong referance 
reference2 = nil
//ARC doesn’t deallocate the Person instance until the third and final strong reference is broken, at which point it’s clear that you are no longer using the Person instance:
reference3 = nil
// Prints "iss is being deinitialized"
//===========

//====Strong Reference Cycles Between Class Instances=====
//In the examples above, ARC is able to track the number of references to the new Person instance you create and to deallocate that Person instance when it’s no longer needed.
class Persons {
    
    var apartment: Apartment?
	let name: String
	init(name: String) {
		self.name = name
		print("\(name) is initialized")
	}
	deinit { print("\(name) is being deinitialized") }
}

class Apartment {
    
    var tenant: Persons?
	let unit: String
	init(unit: String) {
		self.unit = unit
		print("\(unit) is initialized")
	}
	
	deinit { print("Apartment \(unit) is being deinitialized") }
}
var john: Persons?
var unit4A: Apartment?
john = Persons(name: "John Appleseed")
unit4A = Apartment(unit: "4A")
//Here’s how the strong references look after creating and assigning these two instances. The john variable now has a strong reference to the new Person instance, and the unit4A variable has a strong reference to the new Apartment instance:

//You can now link the two instances together so that the person has an apartment, and the apartment has a tenant. Note that an exclamation point (!) is used to unwrap and access the instances stored inside the john and unit4A optional variables, so that the properties of those instances can be set.

john!.apartment = unit4A  // setting a strong referance between two calless
unit4A!.tenant = john
//Unfortunately, linking these two instances creates a strong reference cycle between them. The Person instance now has a strong reference to the Apartment instance, and the Apartment instance has a strong reference to the Person instance. Therefore, when you break the strong references held by the john and unit4A variables, the reference counts don’t drop to zero, and the instances aren’t deallocated by ARC:
john = nil    //will not lose the strong referance
print("0 \(john?.apartment)")
print("0 \(unit4A?.tenant)")
unit4A = nil
print("1 \(john?.apartment)")
print("1 \(unit4A?.tenant)")

//====Resolving Strong Reference Cycles Between Class Instances
//Weak and unowned references enable one instance in a reference cycle to refer to the other instance without keeping a strong hold on it. The instances can then refer to each other without creating a strong reference cycle.
//Use a weak reference when the other instance has a shorter lifetime—that is, when the other instance can be deallocated first. In the Apartment example above, it’s appropriate for an apartment to be able to have no tenant at some point in its lifetime, and so a weak reference is an appropriate way to break the reference cycle in this case. In contrast, use an unowned reference when the other instance has the same lifetime or a longer lifetime.


//=======Weak References========

//A weak reference is a reference that doesn’t keep a strong hold on the instance it refers to, and so doesn’t stop ARC from disposing of the referenced instance. This behavior prevents the reference from becoming part of a strong reference cycle. You indicate a weak reference by placing the weak keyword before a property or variable declaration.
//Because a weak reference doesn’t keep a strong hold on the instance it refers to, it’s possible for that instance to be deallocated while the weak reference is still referring to it. Therefore, ARC automatically sets a weak reference to nil when the instance that it refers to is deallocated. And, because weak references need to allow their value to be changed to nil at runtime, they’re always declared as variables, rather than constants, of an optional type.

//This time around, the Apartment type’s tenant property is declared as a weak reference:
class Personss {

    var apartmentss: Apartmentss?
	let name: String
	init(name: String) {
		self.name = name
		print("\(name) is initialized")
	}
	deinit { print("\(name) is being deinitialized") }
}

class Apartmentss {
    weak var tenant: Personss?  // always must be var and optional
	let unit: String

	init(unit: String) {
		self.unit = unit
		print(" unit \(unit) is initialized")
	}
	deinit { print("Apartment \(unit) is being deinitialized") }
}
//The strong references from the two variables (john and unit4A) and the links between the two instances are created as before:

var sam: Personss? = Personss(name: "Yildiz farfour")
var Unit: Apartmentss? = Apartmentss(unit: "18E")
print(" \(sam!.name) + \(Unit!.unit)")
sam!.apartmentss = Unit
Unit!.tenant = sam
//The Person instance still has a strong reference to the Apartment instance, but the Apartment instance now has a weak reference to the Person instance. This means that when you break the strong reference held by the john variable by setting it to nil, there are no more strong references to the Person instance:

sam = nil //the result of setting the strong referance to nil.Prints"Yildiz farfour is beingdeinitialized"
print("1 \(String(describing: sam?.apartmentss))")
print("2 \(String(describing: Unit?.tenant))")
//Because there are no more strong references to the Person instance, it’s deallocated and the tenant property is set to nil:
Unit = nil
print("\(Unit?.tenant)")

//=======Unowned References===
//Like a weak reference, an unowned reference doesn’t keep a strong hold on the instance it refers to. Unlike a weak reference, however, an unowned reference is used when the other instance has the same lifetime or a longer lifetime

//IMPORTANT
//1-Use an unowned reference only when you are sure that the reference always refers to an instance that hasn’t been deallocated.

//2-If you try to access the value of an unowned reference after that instance has been deallocated, you’ll get a runtime error.

class Customer {
	let name: String
	var card: CreditCard?
	init(name: String) {
		self.name = name
		print(" customer \(name) is being Initialized")
	}
	deinit { print(" customer \(name) is being deinitialized") }
}

class CreditCard {
	let number: UInt64 // capacity is large enough to store a 16-digit card number on both 32-bit and 64-bit systems.
    unowned var customer: Customer  // unowned referance
	init(number: UInt64, customer: Customer) {
		self.number = number
		self.customer = customer
		print(" CreditCard \(number) is being Initialzed")
	}
	deinit { print("Card #\(number) is being deinitialized") }
}
var Issa: Customer? = Customer(name: "Issa alsaher")
//You can now create a Customer instance, and use it to initialize and assign a new CreditCard instance as that customer’s card property:

Issa!.card = CreditCard (number: 1234_5678_9012_3456, customer: Issa!)
print("* \(Issa!.name) and card number is  \(Issa!.card!.number)")
Issa = nil // both set to nil
//=====
////The final code snippet above shows that the deinitializers for the Customer instance and CreditCard instance both print their “deinitialized” messages after the Issa variable is set to nil.
print("\(Issa?.name)")/// just to mke sure they are nil now
print("\(Issa?.card)")

//You can mark an optional reference to a class as unowned. In terms of the ARC ownership model, an unowned optional reference and a weak reference can both be used in the same contexts. The difference is that when you use an unowned optional reference, you’re responsible for making sure it always refers to a valid object or is set to nil.

class Department {
	var name: String
	var courses: [Course]
	init(name: String) {
		self.name = name
		self.courses = []
	}
}

class Course {
	var name: String
	unowned var department: Department
	unowned var nextCourse: Course?
	init(name: String, in department: Department) {
		self.name = name
		self.department = department
		//self.nextCourse = nil
	}
}
//Department maintains a strong reference to each course that the department offers. In the ARC ownership model, a department owns its courses. Course has two unowned references, one to the department and one to the next course a student should take; a course doesn’t own either of these objects. Every course is part of some department so the department property isn’t an optional. However, because some courses don’t have a recommended follow-on course, the nextCourse property is an optional.

//Here’s an example of using these classes:

let department = Department(name: "Horticulture")

let intro = Course(name: "Survey of Plants", in: department)
let intermediate = Course(name: "Growing Common Herbs", in: department)
let advanced = Course(name: "Caring for Tropical Plants", in: department)

intro.nextCourse = intermediate
intermediate.nextCourse = advanced
department.courses = [intro, intermediate, advanced]
//for (index , value) in department.courses.enumerated()
//{
//    print(" \(index+1) \(department.name)has \(value.name)")
//}

//print("& \(department.name) has \(department.courses[0..<department.courses.count])")  // not brinting the names of the courses
for value in department.courses
{
    print(" course \(value.name)")
}
print("& \(department.name) has \(department.courses.count) courses") // print cousres names

//The code above creates a department and its three courses. The intro and intermediate courses both have a suggested next course stored in their nextCourse property, which maintains an unowned optional reference to the course a student should take after completing this one.
//===
print(" courses has\(String(describing: intro.nextCourse?.name))")

//=====Unowned References and Implicitly Unwrapped Optional Properties====

//The examples for weak and unowned references above cover two of the more common scenarios in which it’s necessary to break a strong reference cycle.

//The Person and Apartment example shows a situation where two properties, both of which are allowed to be nil, have the potential to cause a strong reference cycle. This scenario is best resolved with a weak reference.

//The Customer and CreditCard example shows a situation where one property that’s allowed to be nil and another property that can’t be nil have the potential to cause a strong reference cycle. This scenario is best resolved with an unowned reference.

//However, there’s a third scenario, in which both properties should always have a value, and neither property should ever be nil once initialization is complete. In this scenario, it’s useful to combine an unowned property on one class with an implicitly unwrapped optional property on the other class.
class Country {
	let name: String
	var capitalCity: City!    // third scenario
	init(name: String, capitalName: String) {
		self.name = name
		self.capitalCity = City(name: capitalName, country: self)
	}
}
class City {
	let name: String
	unowned let country: Country
	init(name: String, country: Country) {
		self.name = name
		self.country = country
	}
}
////All of this means that you can create the Country and City instances in a single statement, without creating a strong reference cycle, and the capitalCity property can be accessed directly, without needing to use an exclamation point to unwrap its optional value:

var country = Country(name: "Canada", capitalName: "Ottawa")
print("\(country.name)'s capital city is called \(country.capitalCity.name)")

//In the example above, the use of an implicitly unwrapped optional means that all of the two-phase class initializer requirements are satisfied. The capitalCity property can be used and accessed like a non-optional value once initialization is complete, while still avoiding a strong reference cycle.
//==========

class Countries {
    var name: String
    var capitalCity: Cities
    init(name: String, capitalCity: Cities) {
        self.name = name
        self.capitalCity = capitalCity
    }
}
class Cities {
    let name: String
   unowned var country: Countries!
    init(name: String, country: Countries!) {
        self.name = name
        self.country = country
    }
}
//    let capitalCity = Cities(name: "Ottawa", country: nil)
//    let countr = Countries(name: "Canada", capitalCity: capitalCity)
//or
var countr = Countries(name: "Canada", capitalCity: Cities(name: "Ottawa", country: nil))
print("\(countr.name)'s capital city is called \(countr.capitalCity.name)")

//============
	//====Strong Reference Cycles for Closures=== in the book==
//A strong reference cycle can also occur if you assign a closure to a property of a class instance, and the body of that closure captures the instance. This capture might occur because the closure’s body accesses a property of the instance, such as self.someProperty, or because the closure calls a method on the instance, such as self.someMethod(). In either case, these accesses cause the closure to “capture” self, creating a strong reference cycle.

//This strong reference cycle occurs because closures, like classes, are reference types. When you assign a closure to a property, you are assigning a reference to that closure. In essence, it’s the same problem as above—two strong references are keeping each other alive. However, rather than two class instances, this time it’s a class instance and a closure that are keeping each other alive.
class HTMLElement {

	let name: String
	let text: String?

	lazy var asHTML: () -> String = {   //closure
		if let text = self.text {
			return "<\(self.name)>\(text)</\(self.name)>"
		} else {
			return "<\(self.name) />"
		}
    }

	init(name: String, text: String? = nil) {
		self.name = name
		self.text = text
	}

	deinit {
		print("\(name) is being deinitialized")
	}

}
let heading = HTMLElement(name: "h1")
let defaultText = "some default text"
heading.asHTML = {
	return "<\(heading.name)>\(heading.text ?? defaultText)<+/\(heading.name)>"
}
print(heading.asHTML())
// P
//Here’s how you use the HTMLElement class to create and print a new instance:

var paragraph: HTMLElement? = HTMLElement(name: "p", text: "hello, world")
print(paragraph!.asHTML())
// Prints "<p>hello, world</p>"
//Unfortunately, the HTMLElement class, as written above, creates a strong reference cycle between an HTMLElement instance and the closure used for its default asHTML value.

//If you set the paragraph variable to nil and break its strong reference to the HTMLElement instance, neither the HTMLElement instance nor its closure are deallocated, because of the strong reference cycle:

paragraph = nil
//Note that the message in the HTMLElement deinitializer isn’t printed, which shows that the HTMLElement instance isn’t deallocated.


///========Resolving Strong Reference Cycles for Closures=========
//to resolve a strong reference cycle between a closure and a class instance by defining a capture list as part of the closure’s definition. A capture list defines the rules to use when capturing one or more reference types within the closure’s body. As with strong reference cycles between two class instances, you declare each captured reference to be a weak or unowned reference rather than a strong reference

//NOTE
//Swift requires you to write self.someProperty or self.someMethod() (rather than just someProperty or someMethod()) whenever you refer to a member of self within a closure. This helps you remember that it’s possible to capture self by accident.
//=Defining a Capture List===
//Each item in a capture list is a pairing of the weak or unowned keyword with a reference to a class instance (such as self) or a variable initialized with some value (such as delegate = self.delegate). These pairings are written within a pair of square braces, separated by commas.

//Place the capture list before a closure’s parameter list and return type if they’re provided:

//lazy var someClosure = {
//	[unowned self, weak delegate = self.delegate]
//	(index: Int, stringToProcess: String) -> String in
//	 closure body goes here
//}
//If a closure doesn’t specify a parameter list or return type because they can be inferred from context, place the capture list at the very start of the closure, followed by the in keyword:

//lazy var someClosure = {
//	[unowned self, weak delegate = self.delegate] in
//	// closure body goes here
//}

//NOTE

//If the captured reference will never become nil, it should always be captured as an unowned reference, rather than a weak reference.

//An unowned reference is the appropriate capture method to use to resolve the strong reference cycle in the HTMLElement example from Strong Reference Cycles for Closures above. Here’s how you write the HTMLElement class to avoid the cycle:

class HTMLElements {

	let name: String
	let text: String?

	lazy var asHTML: () -> String = {
		[unowned self] in    //importent
		if let text = self.text {
			return "<\(self.name)>\(text)</\(self.name)>"
		} else {
			return "<\(self.name) />"
		}
	}

	init(name: String, text: String? = nil) {
		self.name = name
		self.text = text
	}

	deinit {
		print("\(name) is being deinitialized")
	}

}
//This implementation of HTMLElement is identical to the previous implementation, apart from the addition of a capture list within the asHTML closure. In this case, the capture list is [unowned self], which means “capture self as an unowned reference rather than a strong reference”.

//You can create and print an HTMLElement instance as before:

var paragraphs: HTMLElements? = HTMLElements(name: "p", text: "hello, world")
print(paragraphs!.asHTML())
// Prints "<p>hello, world</p>"

//This time, the capture of self by the closure is an unowned reference, and doesn’t keep a strong hold on the HTMLElement instance it has captured. If you set the strong reference from the paragraph variable to nil, the HTMLElement instance is deallocated, as can be seen from the printing of its deinitializer message in the example below:

paragraphs = nil   // not is deinitialized been called
// Prints "p is being deinitialized"
*/
print("=============Memory Safety==============")
/*
//Understanding Conflicting Access to Memory
//Access to memory happens in your code when you do things like set the value of a variable or pass an argument to a function. For example, the following code contains both a read access and a write access:

// A write access to the memory where one is stored.
   var one = 1                     // write

// A read access from the memory where one is stored.
print("We're number \(one)!")    //read
//A conflicting access to memory can occur when different parts of your code are trying to access the same location in memory at the same time. Multiple accesses to a location in memory at the same time can produce unpredictable or inconsistent behavior. In Swift, there are ways to modify a value that span several lines of code, making it possible to attempt to access a value in the middle of its own modification.

//For example, all the read and write accesses in the code listing below are instantaneous:
func oneMore(than number: Int) -> Int {
    return number + 1
}

var myNumber = 1
//print(oneMore(than: myNumber))
myNumber = oneMore(than: myNumber)
print(myNumber)
// Prints "2"

//However, there are several ways to access memory, called long-term accesses, that span the execution of other code. The difference between instantaneous access and long-term access is that it’s possible for other code to run after a long-term access starts but before it ends, which is called overlap. A long-term access can overlap with other long-term accesses and instantaneous accesses.

//Overlapping accesses appear primarily in code that uses in-out parameters in functions and methods or mutating methods of a structure. The specific kinds of Swift code that use long-term accesses are discussed in the sections below.

//Conflicting Access to In-Out Parameters==
//A function has long-term write access to all of its in-out parameters. The write access for an in-out parameter starts after all of the non-in-out parameters have been evaluated and lasts for the entire duration of that function call. If there are multiple in-out parameters, the write accesses start in the same order as the parameters appear.

//One consequence of this long-term write access is that you can’t access the original variable that was passed as in-out, even if scoping rules and access control would otherwise permit it—any access to the original creates a conflict. For example:

//var stepSizes = 1
//func increments(_ number: inout Int) {
//    number += stepSizes   //conflicting accesses
//}
//
//increments(&stepSizes)
////// Erro
//the read access to stepSize overlaps with the write access to number.
//both number and stepSize refer to the same location in memory. The read and write accesses refer to the same memory and they overlap, producing a conflict.

//One way to solve this conflict is to make an explicit copy of stepSize:

// Make an explicit copy.
var stepSize = 1
func increment(_ number: inout Int) {
    number += stepSize
}
var copyOfStepSize = stepSize   // Make an explicit copy.
increment(&copyOfStepSize)
 //Update the original.
stepSize = copyOfStepSize
print("can access now \(stepSize)")
 //stepSize is now 2

//When you make a copy of stepSize before calling increment(_:), it’s clear that the value of copyOfStepSize is incremented by the current step size. The read access ends before the write access starts, so there isn’t a conflict.

//Another consequence of long-term write access to in-out parameters is that passing a single variable as the argument for multiple in-out parameters of the same function produces a conflict. For example:

func balance(_ x: inout Int, _ y: inout Int) {
    let sum = x + y
    x = sum / 2
    y = sum - x
}
var playerOneScore = 42
var playerTwoScore = 30
balance(&playerOneScore, &playerTwoScore)  // OK
//balance(&playerOneScore, &playerOneScore)
// Error: conflicting accesses to playerOneScore

//The balance(_:_:) function above modifies its two parameters to divide the total value evenly between them. Calling it with playerOneScore and playerTwoScore as arguments doesn’t produce a conflict—there are two write accesses that overlap in time, but they access different locations in memory. In contrast, passing playerOneScore as the value for both parameters produces a conflict because it tries to perform two write accesses to the same location in memory at the same time.


//===Conflicting Access to self in Methods======
//A mutating method on a structure has write access to self for the duration of the method call. For example, consider a game where each player has a health amount, which decreases when taking damage, and an energy amount, which decreases when using special abilities.

struct Player {
    var name: String
    var health: Int
    var energy: Int

    static let maxHealth = 10
    mutating func restoreHealth() {
        health = Player.maxHealth
    }
}

//In the restoreHealth() method above, a write access to self starts at the beginning of the method and lasts until the method returns. In this case, there’s no other code inside restoreHealth() that could have an overlapping access to the properties of a Player instance. The shareHealth(with:) method below takes another Player instance as an in-out parameter, creating the possibility of overlapping accesses.
extension Player {
    mutating func shareHealth(with teammate: inout Player) {
        balance(&teammate.health, &health)
    }
}

var oscar = Player(name: "Oscar", health: 10, energy: 10)
var maria = Player(name: "Maria", health: 5, energy: 10)
oscar.shareHealth(with: &maria)  // OK
//In the example above, calling the shareHealth(with:) method for Oscar’s player to share health with Maria’s player doesn’t cause a conflict. There’s a write access to oscar during the method call because oscar is the value of self in a mutating method, and there’s a write access to maria for the same duration because maria was passed as an in-out parameter.
//However, if you pass oscar as the argument to shareHealth(with:), there’s a conflict:
//oscar.shareHealth(with: &oscar)
// Error: conflicting accesses to oscar
//The mutating method needs write access to self for the duration of the method, and the in-out parameter needs write access to teammate for the same duration. Within the method, both self and teammate refer to the same location in memory. The two write accesses refer to the same memory and they overlap, producing a conflict.


//Conflicting Access to Properties========
//Types like structures, tuples, and enumerations are made up of individual constituent values, such as the properties of a structure or the elements of a tuple. Because these are value types, mutating any piece of the value mutates the whole value, meaning read or write access to one of the properties requires read or write access to the whole value. For example, overlapping write accesses to the elements of a tuple produces a conflict:
//var playerInformation = (health: 10, energy: 20)
//balance(&playerInformation.health, &playerInformation.energy)
// Error: conflicting access to properties of playerInformation
//In the example above, calling balance(_:_:) on the elements of a tuple produces a conflict because there are overlapping write accesses to playerInformation. Both playerInformation.health and playerInformation.energy are passed as in-out parameters, which means balance(_:_:) needs write access to them for the duration of the function call. In both cases, a write access to the tuple element requires a write access to the entire tuple. This means there are two write accesses to playerInformation with durations that overlap, causing a conflict.


//The code below shows that the same error appears for overlapping write accesses to the properties of a structure that’s stored in a global variable.
//var holly = Player(name: "Holly", health: 10, energy: 10)
//balance(&holly.health, &holly.energy)  // Error

//In practice, most access to the properties of a structure can overlap safely. For example, if the variable holly in the example above is changed to a local variable instead of a global variable, the compiler can prove that overlapping access to stored properties of the structure is safe:

func someFunction() {
    var oscar = Player(name: "Oscar", health: 10, energy: 10)
    balance(&oscar.health, &oscar.energy)  // OK
}
//In the example above, Oscar’s health and energy are passed as the two in-out parameters to balance(_:_:). The compiler can prove that memory safety is preserved because the two stored properties don’t interact in any way.
*/
print("=============Types==============")

/*
//Array Type======
//the following two declarations are equivalent:
//let someArray: Array<String> = ["Alex", "Brian", "Dave"]
//let someArray: [String] = ["Alex", "Brian", "Dave"]
//Array3D
//var array3D: [[[Int]]] = [[[1, 2], [3, 4]], [[5, 6], [7, 8]]]

//Dictionary Type====
// the following two declarations are equivalent:
//let someDictionary: [String: Int] = ["Alex": 31, "Paul": 39]
//let someDictionary: Dictionary<String, Int> = ["Alex": 31, "Paul": 39]

//Optional Type======
//the following two declarations are equivalent:
//var optionalInteger: Int?
//var optionalInteger: Optional<Int>

//Implicitly Unwrapped Optional Type
//the following two declarations are equivalent:
//var implicitlyUnwrappedString: String!
//var explicitlyUnwrappedString: Optional<String>
//let tupleOfImplicitlyUnwrappedElements: (Int!, Int!)  // Error
//let implicitlyUnwrappedTuple: (Int, Int)!             // OK
//let arrayOfImplicitlyUnwrappedElements: [Int!]        // Error
//let implicitlyUnwrappedArray: [Int]!                  // OK


//Metatype Type======
//A metatype type refers to the type of any type, including class types, structure types, enumeration types, and protocol types.
class SomeBaseClass {
    class func printClassName() {
        print("SomeBaseClass")
    }
}
class SomeSubClass: SomeBaseClass {
    override class func printClassName() {
        print("SomeSubClass$")
    }
}
let someInstance: SomeBaseClass = SomeSubClass()
// The compile-time type of someInstance is SomeBaseClass,
// and the runtime type of someInstance is SomeSubClass
type(of: someInstance).printClassName()
//Use an initializer expression to construct an instance of a type from that type’s metatype value. For class instances, the initializer that’s called must be marked with the required keyword or the entire class marked with the final keyword.
class AnotherSubClass: SomeBaseClass {
    let string: String
    required init(string: String) {
        self.string = string
    }
    override class func printClassName() {
        print("AnotherSubClass@")
    }
}
let metatypes: AnotherSubClass.Type = AnotherSubClass.self
let anotherInstance = metatypes.init(string: "some string")
type(of: anotherInstance).printClassName()


//Self Type========
//The Self type isn’t a specific type, but rather lets you conveniently refer to the current type without repeating or knowing that type’s name.
class Superclass {
    func f() -> Self {
        return self
    }
}
let x = Superclass()
//print(x.f())
print(type(of: x.f()))
// Prints "Superclass"

class Subclass: Superclass { }
let y = Subclass()
print(type(of: y.f()))
// Prints "Subclass"

let z: Superclass = Subclass()
print(type(of: z.f()))
// Prints "Subclass"
//The Self type refers to the same type as the type(of:) function in the Swift standard library. Writing Self.someStaticMember to access a member of the current type is the same as writing type(of: self).someStaticMember.


//Type-Casting Operators
//There are four type-casting operators: the is operator, the as operator, the as? operator, and the as! operator.
//They have the following form:
//expression is type
//expression as type
//expression as? type
//expression as! type
func f(_ any: Any) { print("Function for Any--") }
func f(_ int: Int) { print("Function for Int+++") }
let T = 10
f(T)
// Prints "Function for Int++"

let D: Any = x
f(D)
// Prints "Function for Any---"

f(x as Any)
// Prints "Function for Any"



//=========Self Expression===========
//The self expression is an explicit reference to the current type or instance of the type in which it occurs. It has the following forms:
//self
//self.member name
//self[subscript index]
//self(initializer arguments)
//self.init(initializer arguments)


//=========Superclass Expression======
//A superclass expression lets a class interact with its superclass. It has one of the following forms:
//super.member name
//super[subscript index]
//super.init(initializer arguments)



//Ambiguous===========
//To distinguish between methods or initializers whose names differ only by the names of their arguments, include the argument names in parentheses, with each argument name followed by a colon (:). Write an underscore (_) for an argument with no name. To distinguish between overloaded methods, use a type annotation. For example:

//class SomeClass {
//    func someMethod(x: Int, y: Int) {}
//    func someMethod(x: Int, z: Int) {}
//    func overloadedMethod(x: Int, y: Int) {}
//    func overloadedMethod(x: Int, y: Bool) {}
//}
//let instance = SomeClass()
//let a = instance.someMethod              // Ambiguous
//let b = instance.someMethod(x:y:)        // Unambiguous
//
//let d = instance.overloadedMethod        // Ambiguous
//let d = instance.overloadedMethod(x:y:)  // Still ambiguous
//let d: (Int, Bool) -> Void  = instance.overloadedMethod(x:y:)  // Unambiguous

*/
print("=============Statments==============")

//Conditional Compilation Block=========
//A conditional compilation block allows code to be conditionally compiled depending on the value of one or more compilation conditions.

//Every conditional compilation block begins with the #if compilation directive and ends with the #endif compilation directive. A simple conditional compilation block has the following form:
//#if compilation condition
//statements
//#endif

//Unlike the condition of an if statement, the compilation condition is evaluated at compile time. As a result, the statements are compiled and executed only if the compilation condition evaluates to true at compile time.
/*
#if compiler(>=5)
print("Compiled with the Swift 5 compiler or later")
#endif
#if swift(>=4.2)
print("Compiled in Swift 4.2 mode or later")
#endif
#if compiler(>=5) && swift(<5)
print("Compiled with the Swift 5 compiler or later in a Swift mode earlier than 5")
#endif
 */
// Prints "Compiled with the Swift 5 compiler or later"
// Prints "Compiled in Swift 4.2 mode or later"
// Prints "Compiled with the Swift 5 compiler or later in a Swift mode earlier than 5"

//#if compilation condition 1
//statements to compile if compilation condition 1 is true
//#elseif compilation condition 2
//statements to compile if compilation condition 2 is true
//#else
//statements to compile if both compilation conditions are false
//#endif


//Compile-Time Diagnostic Statement=======
//A compile-time diagnostic statement causes the compiler to emit an error or a warning during compilation. A compile-time diagnostic statement has the following forms:

//#error("error message")
//#warning("warning message")
//The first form emits the error message as a fatal error and terminates the compilation process. The second form emits the warning message as a nonfatal warning and allows compilation to proceed


//Availability Condition==========
//An availability condition is used as a condition of an if, while, and guard statement to query the availability of APIs at runtime, based on specified platforms arguments.
//
//An availability condition has the following form:

//if #available(platform name version, ..., *) {
//    statements to execute if the APIs are available
//} else {
//    fallback statements to execute if the APIs are unavailable
//}


//Unlike Boolean conditions, you can’t combine availability conditions using logical operators like && and ||. Instead of using ! to negate an availability condition, use an unavailability condition, which has the following form:
//
//if #unavailable(platform name version, ...) {
//    fallback statements to execute if the APIs are unavailable
//} else {
//    statements to execute if the APIs are available
//}


//Computed Variables and Computed Properties=======
//The following form declares a computed variable or computed property:
//
//var variable name: type {
//    get {
//        statements
//    }
//    set(setter name) {
//        statements
//    }
//}



//Stored Variable Observers and Property Observers
//You can also declare a stored variable or property with willSet and didSet observers. A stored variable or property declared with observers has the following form:
//
//var variable name: type = expression {
//    willSet(setter name) {
//        statements
//    }
//    didSet(setter name) {
//        statements
//    }
//}




