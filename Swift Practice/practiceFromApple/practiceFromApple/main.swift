//
//  main.swift
//  practiceFromApple
//
//  Created by Hossam Farfour on 12/07/2022.
import Foundation
import Cocoa
//$0 represents the first parameter passed to swift closure, which is the syntax sugar of swift language. Swift will automatically provide shorthand parameter names for inline closures. You can use names such as $0, $1, $2 to reference the value of closure parameters.
//for loob $0
//deletedbulding.forEach { buildingID in
//selectedDatums.removeValue(forKey: buildingID)
//} or
//deletedbulding.forEach {
//	selectedDatums.removeValue(forKey: $0)
//}
//====================

//let digits = [1,2,4,6,7,9,10,15]
//let even = digits.filter { $0 % 2 == 0 }
//let odd = digits.filter { val in val % 2 == 1 }
//print("even", even)
//print("odd", odd)
// //==============
//let numbers = [1, 2, 3, 4, 5]
//numbers.forEach { print($0) }
//==============
//let numbers = [1, 2, 3, 4, 5]
//let pow_nums = numbers.map { $0 * $0 }
//pow_nums.forEach { print($0) }
// //================
//let numbers = [1,2,5,4,3,6,8,7]
//var sortNumber = numbers.sorted(by: {(a, b) -> Bool in
//	return a < b })
//print("numbers " + "\(sortNumber)")
// //=================
//let number = [1,2,5,4,3,6,8,7]
//var sortNmbers = number.sorted(by: {$0 < $1})
//print("numbers -" + "\(sortNmbers)")

//================
//// If set x to nil, then the variable z's value is 1
//let x:Int? = nil
////let x:Int? = 2
//let y:Int = 2
//let z = x ?? y
//print(z)
// //  ============

//let students = ["Kofi", "Abena", "Efua", "Kweku", "Akosua"]
//let nameToCheck = "hossam"
//if students.contains(nameToCheck) {
//	print("\(nameToCheck) is signed up!")
//} else {
//	print("No record of \(nameToCheck).")
//}


//let label = "The width is "
//let width = 94
//let widthLabel = label + String(width)
//print("\(label + String(width))")



//let apples = 3
//let oranges = 5
//let appleSummary = "I have \(apples) apples."
//print(appleSummary)
//let fruitSummary = "I have \(apples + oranges) pieces of fruit."
//print(fruitSummary)
//let fruitSummary = apples + oranges
//print( "I have \(apples + oranges) pieces of fruit.")

//let quotation = """
//I said "I have \(apples) apples.
//And then I said "I have \(apples + oranges) pieces of fruit.
//"""
//print(quotation)



print("============Array==========")
/*
var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"
print(shoppingList[1])
shoppingList.append("jouce")
shoppingList.insert("Hot Water", at: 0)
//print(shoppingList)
for items in shoppingList {
print(items)
}
// remove item from array
shoppingList.remove(at: 4)
print(shoppingList)
*/

print("===========empty arry and dictionary==========")
/*
let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]
var occupations = [String:String]()
 occupations = ["Malcolm": "Captain", "Kaylee": "Mechanic"]
occupations ["Jayne"] = "Public Relations"
print(occupations["Malcolm"]!)
print(occupations)

var occupation = [String:String]()
occupation["190"] = " Silver ferrari car "
occupation["191"] = " Red ferrari car "
let mycar = occupation["190"]
occupation["191"] = " black lambo "
// loop through the dictionary
for i in occupation {
	print("\(i.key) is a \(i.value)")
}
print( "\(occupation["190"])")

//=================
var myDictionary = [String:String]()
myDictionary["whatever"] = "used to emphasize a lack of restraction in referring to any thingor amount"
myDictionary["something"] = " a thing that is unspecified "
//for word in myDictionary {
//	print("the definition of \(word.key) is : \(word.value)")
//}

let wardToFind = "whatever"
if let values = myDictionary [wardToFind] {
	print("the definition of \(wardToFind) is: \(values)")
} else {
	print("the definition of \(wardToFind) is not found")
}

 */

print("=============Dictionary and lood through it =================")

/*
let interestingNumbers = [
	"Prime": [2, 3, 5, 7, 11, 13],
"Fibonacci": [1, 1, 2, 3, 5, 8],
   "Square": [1, 4, 9, 16, 25]]
var largest = 0
for numbers in interestingNumbers {
	print ("The series is called: \(numbers.key)")
	for number in numbers.value {
		if number > largest {
			largest = number
		}
	}
}
print(largest)


 */
print("========calss and override and super and self and set and get=============")

class Shape {
	var numberOfSides = 0
	func simpleDescription() -> String {
		return "A shape with \(numberOfSides) sides."
	}
}
var shape = Shape()
   shape.numberOfSides = 7
   var shapeDescription = shape.simpleDescription()
print(shapeDescription)

print("===========")

class NamedShape {
	var numberOfSides: Int = 0
	var name: String

	init(names: String) {
		self.name = names
	}

	func simple_Description() -> String {
		return "A shape with \(numberOfSides) sides."
	}
}
class Square: NamedShape {
	var sideLength: Double
    
	init(sideLength: Double, named: String) {
		self.sideLength = sideLength
		super.init(names: named)
		//numberOfSides = 4
	}

	func area() -> Double {
		return sideLength * sideLength
	}

	override func simple_Description() -> String {
		return "A square with sides of length \(sideLength)."
	}
}
var test = Square (sideLength: 5.6 ,named: "my_test_square")
print (test.area())
print (test.simple_Description())

class Triangle: NamedShape {
	var sideLength: Double = 0.0

	init(sideLength: Double, name: String) {
		self.sideLength = sideLength
		super.init(names: name)
		//numberOfSides = 3
	}

	var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
		set {
			sideLength = newValue / 3.0
		}

	}
	override func simple_Description() -> String {
		return "An equilateral triangle with sides of length \(sideLength)."
	}
}
var triangle = Triangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)

print("using do willSet and didSet ")

class TriangleAndSquare {
	var triangle: Triangle {
		willSet {
			square.sideLength = newValue.sideLength
		}
	}
	var square: Square {
		willSet {
			triangle.sideLength = newValue.sideLength
		}
	}
	init(size: Double, name: String) {
		square = Square(sideLength: size, named: name)
		triangle = Triangle(sideLength: size, name: name)
	}
}
var triangleAndSquare = TriangleAndSquare(size: 11, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, named: "larger square")
print(triangleAndSquare.triangle.sideLength)

let optionalSquare: Square? = Square(sideLength: 2.5, named: "optional square")
let sideLength = optionalSquare?.sideLength ?? 0.0
print(sideLength)



print("==========enum===============")
/*
enum Ranks: Int {
	case ace = 1
	case two, three, four, five, six, seven, eight, nine, ten
	case jack, queen, king

	func simpleDescription() -> String {
		switch self {
			case .ace:
				return "ace in my"
			case .jack:
				return "jack to the "
			case .queen:
				return "queen for the "
			case .king:
				return "king at the "
			default:
				return String(self.rawValue)
		}
	}
}
let aces : Ranks
aces = Ranks.king
print(aces.rawValue)
print(Ranks.king.simpleDescription())
let aceRawValue = aces.rawValue
if let convertedRank = Ranks(rawValue: 5) {
	let threeDescription = convertedRank.simpleDescription()
	print(threeDescription)
}

print("===========")

enum PizzaSize: CaseIterable {
	case small, medium, large
}
var size = PizzaSize.medium
switch size {
	case .small:
		print("I ordered a small size pizza.")

	case .medium:
		print("I ordered a medium size pizza.")

	case .large:
		print("I ordered a large size pizza.");
}

for Items in PizzaSize.allCases {
	print(Items)
}

// enums With Raw Values
enum Size : Int {
	case small = 10
	case medium = 12
	case large = 14
}

// access raw value
var result = Size.medium.rawValue
print(result)
print("===========")

// enum Associated Values
enum Laptop {
	case name(String)     // associate string value
	case price (Int)      // associate integer value
}

var brand = Laptop.name("Razer") // pass string value to name
print(brand)

// pass integer value to price
var offer = Laptop.price(1599)
print(offer)
print("===========")

enum Suit {
	case spades, hearts, diamonds, clubs

	func simpleDescription() -> String {
		switch self {
			case .spades:
				return "spades for all "
			case .hearts:
				return "hearts for all "
			case .diamonds:
				return "diamonds for all "
			case .clubs:
				return "clubs"
		}
	}
}
let hearts = Suit.diamonds
let heartsDescription = hearts.simpleDescription()
print(heartsDescription)
print("===========")

struct Card {
	var rank: Ranks
	var suit: Suit
	func simpleDescriptions() -> String {
		return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
	}
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescriptions()
print(threeOfSpadesDescription)
print("====rr===")



enum ServerResponse {
	case result(String, String)
	case failure(String)
}
let success = ServerResponse.result("6:00 am", "8:00 pm")
let failure = ServerResponse.failure("Out of cheese.")

switch success {
	case let .result(sunrise, sunset):
		print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
	case .failure(let message):
		print("Failure...  \(message)")
}
 */

print("==========Protocols and Extensions=============")
/*
//“Classes, enumerations, and structs can all adopt protocols"
//Protocols connect different objects together. A protocol describes a set of rules or procedures that a given task must follow.

protocol Vehicle {
	var name : String { get }
	var currentPassenger: Int { get set}
	func estimateTime (for time: Int) -> Int
	func travel (distance: Int)
}
struct Car : Vehicle {
	let name = "Car"
	var currentPassenger =  1
	func estimateTime (for time: Int) -> Int {
		return time
	}
	func travel (distance: Int) {
		print("I am driving  \(distance) km ")
	}
	func openSunroof () {
		print("it is a nice day !")
	}
}
func commute (distance: Int , using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) < 70 {
		print("that is too slow , I will try different vechicle")
	} else
	{
		vehicle.travel(distance: distance)
	}
}

struct  Bicycle : Vehicle {
	let name = "Bike"
	var currentPassenger = 1
	func estimateTime(for time: Int) -> Int {
		return time
	}
	func travel(distance: Int) {
		print("I am cycling \(distance) km ")
	}
}
func getTravelEstimate(distance: Int, using vehicles: [Vehicle]) {
	for vehicle in vehicles {
		let estimate = vehicle.estimateTime(for: distance)
		print("\(vehicle.name) : \(estimate) hours to travel \(distance) km")
	}
}
let car = Car()
commute(distance: 100, using: car)

let bike = Bicycle()
commute(distance: 50, using: bike)
getTravelEstimate(distance: 150, using: [car , bike])
//\\====================================

protocol Example {
	var Description: String { get }
	mutating func adjust()
}
class SimpleClass: Example {
	var Description: String = "A very simple class."
	var anotherProperty: Int = 69105
	func adjust() {
		Description += " Now 100% adjusted."
	}
}
var a = SimpleClass()
a.adjust()
print("1 \(a.Description)")

let protocolValue: Example = a
print("2 \(protocolValue.Description)")

//=======================with struct
struct SimpleStructure: Example {
	var Description: String = "A simple structure"
	mutating func adjust() {
		Description += " (adjusted)"
	}
}
var b = SimpleStructure()
b.adjust()
print(b.Description)
print("===========")

let protocolValues: Example = b
print(protocolValues.Description)

extension Int: Example {
	var Description: String {
		return "The number is \(self)"
	}
	mutating func adjust() {
		self += 42
	}
}
print(8.Description)
*/
print ("====================Generics==================")
/*
//string func
func sayHello(value: String) ->String {
	return "hello from String function \(value)"
}
print (sayHello(value: "issa"))

//Int func
func sayHello(value: Int) ->Int {
	return value
}
print ("hello from Int Function \(sayHello(value: 50))")

//Genaric
func sayHelo <T> (value: T) {
	print( " hello world from Genaric function \(value)")
}
sayHelo(value: 4)
sayHelo (value: "hossam")

//Any
func sayHeloo (value: Any) {
	print( " hello world from any function \(value)")
}
sayHeloo (value: 3)
sayHeloo (value: "sam")
//======= Numeric
func add <T: Numeric>(a: T , b: T) -> T {
	return a + b
}
print (add(a: 12, b: 10))
print (add(a: 12, b: 10.10))
print (add(a: 12.10, b: 10.10))
//==================

struct stack<Elemnt> {
	 var values: [Elemnt] = []

    mutating func puch (value: Elemnt) {
		values.append(value)
	}
    mutating func pop() -> Elemnt? {
		values.popLast()
	}
}
var stackOfInt = stack<Int> ()  //
stackOfInt.puch(value: 2)
stackOfInt.puch(value: 4)
print(stackOfInt)
var satckOfString = stack<String>()  //
satckOfString.puch(value: "hossam")
satckOfString.puch(value: "issa")
print(satckOfString)

extension stack {
	var lastPushed: Elemnt? {
		values.last
	}
}
print("the last pushed Item is \(satckOfString.lastPushed ?? "ali")")
print("the last pushed Item is \(stackOfInt.lastPushed ?? 0)")


func makeArray<Item> (item: Item, numberOfTimes: Int) -> [Item] {
	var result: [Item] = []
	for _ in 0..<numberOfTimes {
		result.append(item)
	}
	return result
}
print(makeArray(item: "knock", numberOfTimes: 5))

//=============

enum OptionalValue <Wrapped> {
	case none
	case some(Wrapped)
}
var possibleInteger: OptionalValue <Int> = .none
possibleInteger = .some(50)
print("my int are \(possibleInteger)")
//==============================
func anyCommonElements <T: Sequence, U: Sequence> (_ lhs: T, _ rhs: U) -> Bool
where  T.Element == U.Element, T.Element: Equatable
{
for lhsItem in lhs {
	for rhsItem in rhs {
		if lhsItem == rhsItem {
			return true
		}
	}
}
return false
}
print ( anyCommonElements([1,2,3,4,5,6,9],[3]))
print ( anyCommonElements([1,2,3],[3]))
*/
print("=====enumerated()===========")
/*
let IntArray = [1,2,3,4,5,6,7,8,9]
let abcArray = ["a","b","c","d","e","f","g","h","i"]

func FindletterIndex (_ array:[String], letter: String) ->Int? {
	for (i , elemnt) in array.enumerated() {
		if elemnt == letter {
			return i
		}
	}
	return nil
}
print ("the number is \(FindletterIndex(abcArray , letter: "f") ?? 0)")
//print (FindletterIndex(abcArray , letter: 9))

func linearSearch <T:Comparable> (_ array: [T], letter: T) ->Int? {
for (index,elemnt) in array.enumerated() {
		if elemnt == letter {
			return index
		}
	}
	return nil
}
print("we will get \(linearSearch(IntArray,letter: 7))")
print(linearSearch(abcArray,letter: "f"))

for (n, c) in "Swift".enumerated() {
	print("\(n): '\(c)'")
}

 */
print ("===========Comparable=====================")
/*
struct Date {
	let year: Int
	let month: Int
	let day: Int
}
extension Date: Comparable {
    
	static func < (lhs: Date, rhs: Date) -> Bool {
		if lhs.year != rhs.year {
			return lhs.year < rhs.year
		} else if lhs.month != rhs.month {
			return lhs.month < rhs.month
		} else {
			return lhs.day < rhs.day
		}
	}
    
	static func == (lhs: Date, rhs: Date) -> Bool {
		return lhs.year == rhs.year && lhs.month == rhs.month
			&& lhs.day == rhs.day
	}
}
let spaceOddity = Date(year: 1969, month: 6, day: 20)   // July 11, 1969
let moonLanding = Date(year: 1969, month: 5, day: 21)   // July 20, 1969
if moonLanding > spaceOddity {
	print("Major Tom stepped through the door first.")
} else {
	print("David Bowie was following in Neil Armstrong's footsteps.")
}
 */

