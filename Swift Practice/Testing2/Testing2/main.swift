//
//  main.swift
//  Testing2
//
//  Created by Hossam Farfour on 08/07/2022.
import Foundation
import Cocoa
// Array
//var SomeArray: [Int] = []
//var SomeArray = [Int]()
//var SomeArray = Array<Int>()
//var shopingList: [String] = ["Eggs","milk"]   // full
//grid = Array(repeating: 1.0, count: rows * columns)
// Set
//var letter: Set<String> = []
//var letter = Set<Character>()
//var favouites: Set<String> = ["Rock", "Classical", "Hip hop"]   //full
//Dictionary
//var MyDictionary: [Int,String] = [:]
//var MyDictionary = [Int,String]()
//var MyDictionary = Dictionary<Int, String>()
//var names: [String:String] = ["HF": "Hossam Farfour", "DOB": "Date Of Birth"] //full


//
//var canSighUp: Bool {                                 // computable function
//	return age >= 18 && hightinFeet >= 6
//}

//lazy var questions :[String] =  {                     // this is clouser
//	switch level {
//		case .easy:
//			return ["this is a easy exam"]
//		case .medium:
//			return ["this is a medium exam"]
//		case .hard:
//			return ["this is a hard exam"]
//	}
//}() // call it here
//}
//
//var totalSteps: Int = 0 {                            // stored property // property opserver
//	willSet(newTotalSteps) {
//		print("About to set totalSteps to \(newTotalSteps)")
//	}
//	didSet {
//		if totalSteps > oldValue  {
//			print("Added \(totalSteps - oldValue) steps")
//		}
//	}
//}

//==================================================
//property list let red, green, blue: Double // has theree properties
//prameter (placed in deceralation of the function , void Fun (name ,))
// argument (placed in calling function , fun("hossam" ))
//attribute use inside of a calss
// motheds // // in class func print === this is motheds
// in calss vat room == this is property
print("============switch===============")

//Switches support any kind of data and a wide variety of comparison operations—they aren’t limited to integers and tests for equality.”
//A switch statement considers a value and compares it against several possible matching patterns

//" using switch with menu Driven programs
/*
let ADULT_RATE: Double = 120.0
let CHILD_RATE:Double = 60.0
let SENIOR_RATE:Double = 100.0
var charges = 0.0
var months = 0.0

//dislay  the menue and get the user's choice
print("Health Clud Memebrship Menu ")
print(" 1 . Stander Adult membership ")
print(" 2 . Stander Child membership")
print(" 3 . Stander Senior Citizen membership")
print(" 4 . Quit the Program ")
print(" Enter your choice please ")

//use the menu selection to excute the correct set of actions
 if let enteredText = readLine(),
   let SelectedChoicee = Int(enteredText),
( SelectedChoicee >= 1 && SelectedChoicee <= 3 ) {
    print(" for how many months ? ")
    if let enteredMonths  = readLine(),
       let duration = Double(enteredMonths) {
        months = duration
        // set charge pased on user input
        switch SelectedChoicee
        {
            case 1:
                charges = months * ADULT_RATE
            break
            case 2:
                charges = months * CHILD_RATE
            break
            case 3:
                charges = months * SENIOR_RATE
            break
            default:
                print("select one ")
            break
        }

    }
    print("you chose a \(SelectedChoicee) for \(months) and")
    print ("the total charges \(charges) pound ")
} else {
    print(" Enter your choice between 1 and 3 otherwise the program will terminate5")
}

*/

/*
let char = "a"
switch char {
	case "a":
		print("this is an a")
	case "b":
		print("this is an b")
	case "c","d":
		print("this is c or D ")
	default:
		print("this is a fallback")

}
//=======

let approximateCount = 900
let countedThings = "moons orbiting Saturn"
var naturalCount: String = " "
switch approximateCount {
	case 0:
		naturalCount = "no"
	case 1..<5:
		naturalCount = "a few"
	case 5..<12:
		naturalCount = "several"
	case 12..<100:
		naturalCount = "dozens of"
	case 100..<1000:
		naturalCount = "hundreds of"
	default:
		naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")
// Prints "There are dozens of moons orbiting Saturn."


//"=========Tuples in switch========="

//You can use tuples to test multiple values in the same switch statement. Each element of the tuple can be tested against a different value or interval of values

let somePoint = (1,2)
switch somePoint {
	case (0, 0):
		print("\(somePoint) is at the origin")
	case (_, 0):
		print("\(somePoint) is on the x-axis")
	case (0, _):
		print("\(somePoint) is on the y-axis")
	case (-2...2, -2...2):
		print("\(somePoint) is inside the box")
	default:
       print("\(somePoint) is outside of the box")
}

// ============ Value Bindings ===========

//A switch case can name the value or values it matches to temporary constants or variables, for use in the body of the case. This behavior is known as value binding, because the values are bound to temporary constants or variables within the case’s body.
let anotherPoint = (1, 0)
switch anotherPoint {
	case (let x, 0):
		print("on the x-axis with an x value of \(x)")
	case (0, let y):
		print("on the y-axis with a y value of \(y)")
	case let (x, y):
		print("somewhere else at (\(x), \(y))")
}

//============== Where ============
//A switch case can use a where clause to check for additional conditions.

let AnotherPoint = (4, -4)
switch AnotherPoint {
	case let (x, y) where x == y:
		print("(\(x), \(y)) is on the line x == y")
	case let (x, y) where x == -y:
		print("(\(x), \(y)) is on the line x == -y")
	case let (x, y):
		print("(\(x), \(y)) is just some arbitrary point")
	default:
	print(" \(anotherPoint) += this is fallthrough ")
}

//============Compound Cases=================

let someCharacter: Character = "u"
switch someCharacter {
	case "a", "e", "i", "o", "u":
		print("\(someCharacter) is a vowel")
	case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
		 "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
		print("\(someCharacter) is a consonant")

	default:
		print("\(someCharacter) isn't a vowel or a consonant")
}
 //"======Fallthrough switch loop======="
 // it fallthourh the next line of code ( if it is a case will take it or if it is a default will take it)
 let integerToDescribe = 1
 var description = "The number \(integerToDescribe) is"
 switch integerToDescribe {
     case 2, 3, 5, 7, 11, 13, 17, 19:
         description += " a prime number, and also"
         fallthrough
     default:
         description += " an integer."
 }
 print(description)

 ////"======Break in switch loop ======="

 //The break statement ends execution of an entire control flow statement immediately. The break statement can be used inside a switch or loop statement when you want to terminate the execution of the switch or loop statement earlier than would otherwise be the case.
 let numberSymbol: Character = "三"  // Chinese symbol for the number 3
 var possibleIntegerValue: Int?
 switch numberSymbol {
     case "1", "١", "一", "๑":
         possibleIntegerValue = 1
     case "2", "٢", "二", "๒":
         possibleIntegerValue = 2
     case "3", "٣", "三", "๓":
         possibleIntegerValue = 3
     case "4", "٤", "四", "๔":
         possibleIntegerValue = 4
     default:
         break
 }
 if let integerValue = possibleIntegerValue {
     print("The integer value of \(numberSymbol) is \(integerValue).")
 } else {
     print("An integer value couldn't be found for \(numberSymbol).")
 }
 
*/

print("=========Continue in loop ============")
/*
//The continue statement tells a loop to stop what it’s doing and start again at the beginning of the next iteration through the loop. It says “I am done with the current loop iteration” without leaving the loop altogether.

 var index = 10
 repeat {
 index = index + 1
// if( index == 15 ) {
// continue
// }
 print( "Value of index is \(index)")
 } while index < 20

 //=====
let Input = "great minds think alike"
var Output = " "
let characters: [Character] = ["a", "e", "i", "o", "u"]
for i in Input {
	if characters.contains(i) {
		continue
	}
	Output.append(i)
}
print(Output)

*/
print("=========While loop===========")
/*
var counter:Int = 1
while counter <= 10 {
    print(counter)
 
	if(counter == 6)
	{
		break
	}
    counter += 1
}
*/
print("======Reapet While loop=======")
/*
var counter2 = 1
repeat {
    print(counter2)
	if(counter2 == 6)
	{
		break;
	}
	counter2 += 1
}while counter2 <= 10
//print(counter2)
*/
print("===========forLoop===========")
/*
//print("======for loop for DVDs=====")
        var total: Double = 0.0
        print("get the number of DVDs rented ")
        if let selectedDVDs = readLine(),
           let totalDVDs = Int(selectedDVDs) {
        for dvd in 1...totalDVDs {
            if dvd % 3 == 0 {
                print("DVD \(dvd) is free")
                continue
            }
            print("Is DVD \(dvd) a current release (y or n )")
            let isNewRelease = readLine()
            if (isNewRelease == "y" || isNewRelease == "Y") {
                total += 3
            } else {
                total += 2
            }
        }
}
    print("the total you have to pay is \(total)")
//==
    let names = ["Ann","Alex","Brian","Jack"]
    for name in names {
        print("hello \(name)")
    }
//==
    let numberOfLges = ["spider": 8, "ant": 6, "cat": 4]
    for (animalName , legCount) in numberOfLges {
        print("\(animalName) \(legCount)")
    }

    var sum = 0

    for counter in 1...5 {
        sum+=counter
    }
    print(sum)
 */
print("=========guard statement==========")
/*
//A guard statement, like an if statement, executes statements depending on the Boolean value of an expression. You use a guard statement to require that a condition must be true in order for the code after the guard statement to be executed. Unlike an if statement, a guard statement always has an else clause—the code inside the else clause is executed if the condition isn’t true.


func greet (person: [String: String]) {
	guard let name = person["name"] else {
		return
	}
	print("Hello \(name)!")

	guard let location = person["location"] else {
		print("I hope the weather is nice near you.")
		return
	}
	print("I hope the weather is nice in \(location).")
}

greet(person: ["name": "John"])
greet(person: ["name": "hossam", "location": "Cupertino"])

*/
print("==========Function===========")
/*
	//func nameOfFunc (argumentlable argumentName : argumentlable argumentName) {
	//codes
	//}

 func addTwoNymbers() {
	let a = 1
	let b = 2
	let c = 3
	let total = a + b + c
	print(total)
	
}
addTwoNymbers()

func addNumbers (name :Int) {
	let a = name
	let b = 2
	let c = 3
	let total2 = a + b + c
    print(total2)
}
addNumbers(name: 5)

func addsome(name1 : Int, name2: Int) {
	let a = name1
	let b = name2
	let c = 3
	let total = a + b + c
    print(total)
}
addsome(name1: 5, name2: 5)


func greet(person: String, day: String) -> String {
return "Hello \(person), today is \(day)."

}
print (greet(person: "Bob", day: "Tuesday"))


func greet(_ person: String, on day: String) -> String {
return "Hello \(person), today is \(day)."
}
print (greet("John", on: "Wednesday"))

func greets(_ person: String,_ day: String) -> String {
return "Hello \(person), today is \(day)."
}
print (greets("John", "Wednesday"))

print("=========================================")

func printAndCount(string: String) -> Int {
	print("the count is \(string)")
	return string.count
}
func printWithoutCounting(strings: String) {
    print("the count is \(strings)")
    print(strings.count)
}
print(printAndCount(string: "hello, world"))
// prints "hello, world" and returns a value of 12
printWithoutCounting(strings: "hello world")
//=====

print("=====tuple in function=========")
//You can use a tuple type as the return type for a function to return multiple values as part of one compound return value.
func minMax(arrays: [Int]) -> (mins: Int, maxs: Int) {
	var currentMin = arrays[0]
	var currentMax = arrays[0]
	for i in arrays[1..<arrays.count] {
		if i  < currentMin {
			currentMin = i
		} else if i  > currentMax {
			currentMax = i
		}
	}
	return (currentMin, currentMax)
}
print(minMax(arrays: [1,2,3,4,5,6]))
let bounds = minMax(arrays: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.mins) and max is \(bounds.maxs)")
//====

//Optional Tuple Return Types
func Max(array: [Int]) -> (min: Int, max: Int)? {
	if array.isEmpty { return nil }
	var currentMin = array[0]
	var currentMax = array[0]
	for value in array[1..<array.count] {
		if value < currentMin {
			currentMin = value
		} else if value > currentMax {
			currentMax = value
		}
	}
	return (currentMin, currentMax)
}
print(Max(array: []))


//Variadic Parameters///
//A variadic parameter accepts zero or more values of a specified type. You use a variadic parameter to specify that the parameter can be passed a varying number of input values when the function is called.
func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0.0
	for number in numbers {
		total += number
	}
	return total / Double(numbers.count)
}
print (arithmeticMean(1, 2, 3, 4, 5))
// returns 3.0, which is the arithmetic mean of these five numbers
print (arithmeticMean(3, 8.25, 18.75))
//==
//In-Out Parameters
//Function parameters are constants by default. Trying to change the value of a function parameter from within the body of that function results in a compile-time error. This means that you can’t change the value of a parameter by mistake. If you want a function to modify a parameter’s value, and you want those changes to persist after the function call has ended, define that parameter as an in-out parameter instead.
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
	let temp = a
	a = b
	b = temp
}
var someInt = 3
var anotherInt = 107
//swapTwoInts(a: &someInt, b: &anotherInt)
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
*/
print("========Function Types===========")
/*
 
//Every function has a specific function type, made up of the parameter types and the return type of the function.
func addTwoInts(_ a: Int, _ b: Int) -> Int {
	return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
	return a * b
}
var mathFunction = addTwoInts
print("Result: \(mathFunction(2, 3))")
//var Function: (Int, Int) -> Int = multiplyTwoInts
//print("Result: \(Function(2, 3))")
//or
mathFunction = multiplyTwoInts
print("Result: \(mathFunction(2, 3))")

//Function Types as Parameter Types                              //===========
//You can use a function type such as (Int, Int) -> Int as a parameter type for another function.
func printMathResult (_ math: (Int, Int) -> Int, _ T: Int, _ C: Int) {
	print("Result now \(math(T,C))")
}
printMathResult(addTwoInts, 3, 5)

printMathResult(multiplyTwoInts, 3, 5)
//=======
print("===Use a tuple to make a compound value—for example, to return multiple values from a function. The elements of a tuple can be referred to either by name or by number.==")
func calculate(scores: [Int]) -> (min: Int, max: Int, sum : Int) {
    var max = scores[0]
    var min = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)  //return in order 0,1,2
    
}
let statistics = calculate(scores: [5, 4, 1, 6, 6])
print(statistics)
print(statistics.sum)
print(statistics.1) //0 main , 1 max  , 2 sum


//Function Types as Return Types                                      //===========
func stepForward(_ input: Int) -> Int {
	return input + 1
}
func stepBackward(_ input: Int) -> Int {
	return input - 1
}
func chooseStepFunction(backward: Bool) -> (Int) -> Int {                 //=============
	return backward ? stepBackward : stepForward
}
var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero now refers to the stepBackward() function
// Counting to zero:
while currentValue != 0 {
	print("\(currentValue)... ")
	currentValue = moveNearerToZero(currentValue)
}
print("zero!")

//Nested Functions                                                         //============
func StepFunction(backward: Bool) -> (Int) -> Int {
	func Forward(input: Int) -> Int { return input + 1 }
	func Backward(input: Int) -> Int { return input - 1 }
	return backward ? Backward : Forward
}
var Value = -4
let moveToZero = StepFunction(backward: Value > 0)
// moveNearerToZero now refers to the nested stepForward() function
while Value != 0 {
	print("\(Value)... ")
	Value = moveToZero(Value)
}
print("zero!")
 //====

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 10
    }
    add()
    return y
}
print (returnFifteen())

//=====
 
 //Functions are a first-class type. This means that a function can return another function as its value.======
 func makeIncrementer() -> ((Int) -> Int) {
     func addOne(number: Int) -> Int {
         
        return 1 + number
     }
     return addOne
 }
 var increments = makeIncrementer()
 print(increments(7))
 //===

 //A function can take another function as one of its arguments.   //==============
func hasAnyMatsh (list: [Int] , condition: (Int) -> Bool) -> Bool {
    for i in list {
        if condition (i) {
            return true
        }
    }
    return false
}
func lessthanTen (number: Int) -> Bool {
    return number < 10
}
 let someNumners = [12,34,56,70,88]
print(hasAnyMatsh(list: someNumners, condition: lessthanTen))
//pirnt  ture if the array contain a number less than 10 otherwise fales
 
 */
print("===========calss===========")
/*
//open class User {
//	open func login() { }
//	public func playGame() { }
//	public init() { }
//}
//If that were defined in its own module, any other code accessing it would be able to inherit from the User class because it’s marked open. Inside the child class, they could override login() because it’s also marked open, but they could not override playGame() because it’s marked only as public – it can be called, but not changed. If you remove open from the whole User class it can be used but not subclassed.
//The open keyword is an effective way of stopping other developers from accidentally overriding functionality that’s critical to the way your app works. If you use it selectively, subclassers can add their own functionality or perhaps replace a few non-critical components, without altering the fundamental behavior of your class.


//  An open class is accessible and subclassable outside of the defining module. An open class member is accessible and overridable outside of the defining module. A public class is accessible but not subclassable outside of the defining module.

class emplyee {
    
	var name = " "
	var salary = 0
	var role = " "
	func dosomework() {
		print("I am doing some work ")
		salary += 10
	}
}

var r: emplyee = emplyee()
r.name = "hossam"
r.salary = 300
r.role = "keeper"
print("the name is \(r.name)")
print("the salary  is \(r.salary)")
print("the role is \(r.role)")
r.dosomework()
print("the salary  is \(r.salary)")

//another variable

//var c: emplyee =  emplyee()
//or
var c = emplyee()
c.name = "issa"
c.role = "Managre"
c.salary = 400
print("the name is \(c.name)")
print("the salary  is \(c.salary)")
print("the role is \(c.role)")
c.dosomework()
print("the salary  is \(c.salary)")

//Identity Operators
//Because classes are reference types, it’s possible for multiple constants and variables to refer to the same single instance of a class behind the scenes. (The same isn’t true for structures and enumerations, because they’re always copied when they’re assigned to a constant or variable, or passed to a function.)
//Identical to (===)
//
//Not identical to (!==)
//
//Use these operators to check whether two constants or variables refer to the same single instance:
//if tenEighty === alsoTenEighty {
//	print("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
//}

*/

print("======== inheritace and override with property observer======")
/*
  class emplyee {
	var name = " "
	var salary = 0
	var role = " "

	 func dosomework() {
		print("I am doing some work ")
		salary += 10
	}
}

var r: emplyee = emplyee()
r.name = "hossam"
r.salary=300
r.role = "keeper"
print("the name is \(r.name)")
print("the salary  is \(r.salary)")
print("the role is \(r.role)")
r.dosomework()
print("the salary  is \(r.salary)")

//another class
class manager : emplyee {   //======== work only for class not for struct========//
	var teamsize = 0
	override func dosomework() {
		super.dosomework() // it calls the main func too
		print("i am also managing the team ")
		salary += 20
	}
}

var m: manager = manager()
m.name = "issa"
m.role = "Managre"
m.salary = 400
m.teamsize = 20

print("the name is \(m.name)")
print("the salary  is \(m.salary)")
print("the role is \(m.role)")
print("the team size  is \(m.teamsize)")
m.dosomework()
print("the salary  is \(m.salary)")
print("====================")



//Overriding Property Observers=====
//You can use property overriding to add property observers to an inherited property. This enables you to be notified when the value of an inherited property changes, regardless of how that property was originally implemented.
//NOTE
//You can’t add property observers to inherited constant stored properties or inherited read-only computed properties.
 //In swift, we can use property observers in any stored properties, except lazy stored properties.
//The value of these properties can’t be set, and so it isn’t appropriate to provide a willSet or didSet implementation as part of an override.

//The following example defines a new class called AutomaticCar, which is a subclass of Car. The AutomaticCar class represents a car with an automatic gearbox, which automatically selects an appropriate gear to use based on the current speed:

 
class Vehicle {
	var currentSpeed = 0.0
	var description: String {
        get {
		return "traveling at \(currentSpeed) miles per hour"
	  }
    }
	func makeNoise() {
		// do nothing - an arbitrary vehicle doesn't necessarily make a noise
	}
}
class Car: Vehicle {
	var gear = 1
	override var description: String {
        get {
		return super.description + " in gear \(gear)"
        }
        
    }
}
let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car: \(car.description)")
// Car: traveling at 25.0 miles per hour in gear 3

//==Overriding Property Observers=================
	override var currentSpeed: Double {
		didSet {
			gear = Int(currentSpeed / 10.0) + 1
		}
	}
}
let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)")
// AutomaticCar: traveling at 35.0 miles per hour in gear 4
automatic.currentSpeed = 60.0
print("AutomaticCar: \(automatic.description)")
 
 */

print ("==========struct==========")
/*
protocol employee {
	var name: String   {get set}
	var salary: Double {get set}
	var role: String   {get set}
}
extension employee {
	func display() {
	print("a=\(name), b = \(salary) ,r= \(role)")
	}
}

struct TestInheritance : employee {

	init(name: String, salary: Double, role: String) {
		self.name = name
		self.salary = salary
		self.role = role
	}
	var name = " staff "
	var salary = 0.0
	var role = " staff "

    mutating func dosomework() {
		print("I am doing some work ")
		salary += 10
	}
}

    var x = TestInheritance(name: "sam", salary: 0.0, role: "manager")
    x.display()
    x.name = "hossam"
    x.salary=300
    x.role = "keeper"
    print("the name is \(x.name)")
    print("the salary  is \(x.salary)")
    print("the role is \(x.role)")
    x.dosomework()
    print("the salary  is \(x.salary)")



    var m = TestInheritance(name: " ", salary: 0.0, role: " ")
    m.name = "issa"
    m.role = "Managre"
    m.salary = 400

    print("the name is \(m.name)")
    print("the salary  is \(m.salary)")
    print("the role is \(m.role)")
    m.dosomework()
    print("the salary  is \(m.salary)")


class temp {
    var a = 7
	var increament: Int {  // read only computed property
		return a + 1
	}
	var interface : Int {
		get {
			return a
		}
        set {
            if newValue != 0 {  // if the value is 0 it will takes 7
           a = newValue
			}
		}
     }
}
var whatever = temp()
whatever.interface = 1
print(whatever.interface)
//whatever.increament = 5// get only
print(whatever.increament)
//===

    struct Stack {
    //var items = [Int]() // Empty items array
    var items : [Int] = []
    mutating func push(_ item: Int) {
    items.append(item)
    }

    mutating func pop() -> Int? {
        if items.isEmpty {
            return nil
        } else {
            return items.removeLast()
       }
    }
}

    var stack = Stack()
    stack.push(4)
    stack.push(78)
    print (stack.items) // [4, 78]
    stack.pop()
    print (stack.items) // [4]
 */
print ("===========Array===========")
/*
//Empty Array
//var SomeArray: [Int] = []
//var SomeArray = [Int]()
var SomeArray = Array<Int>()
//full array
//var shoppingList = ["catfish", "water", "tulips"]    //=============
print("someInts in my [int] with \(SomeArray.count)")
SomeArray.append(3)
print("someInts in my [int] with \(SomeArray.count)")

//Creating an Array with a Value
var threeDoubles = Array (repeating: 2.5, count: 3)
print("the current item in the array are \(threeDoubles)")
print("the current item in the array are \(threeDoubles.count)")

//Creating an Array by Adding Two Arrays Together
var anotherThreeDouble = Array (repeating: 3.4, count: 3)
print("the current item in the array are \(anotherThreeDouble)")
//add two array togather
var addArraya = threeDoubles + anotherThreeDouble
print("the current item in the array are \(addArraya)")

//Creating an Array with an Array Literal                //===========

 
var shopingList: [String] = ["Eggs","milk"]
print("items in the array are  \(shopingList)")
shopingList.append("butter")
print("items in the array are  \(shopingList)")
shopingList += ["baking", "peper","cheese"]
print("items in the array are  \(shopingList)")

var firstItem = shopingList[0]
print("the first item in the array is  \(firstItem)")
// or print("the first item in the array is  \(shopingList[0])")
shopingList[4...5] = ["Banans","Apples"] // to change the valeus
print("items in the array now are  \(shopingList)")
//To insert an item into the array at a specified index
shopingList.insert("Syrop", at: 3)
print("items in the array now are  \(shopingList)")
//remove items
shopingList.remove(at: 1)
print("items in the array now are  \(shopingList)")
//or
if let ToRemove = shopingList.index(of: "Syrop") {
	shopingList.remove(at: ToRemove)
}
print("my shpoing list composed of \(shopingList)")
//or
shopingList.removeLast()
print("my shpoing list composed of \(shopingList)")
//Iterating Over an Array (the enumerated() method returns a tuple composed of an integer and the item.)
for (index,value) in shopingList.enumerated() {       //==========
print("items \(index+1) : \(value)")
}
 */
print("==========Filter() and $0 ==========")
/*
let digits: [Int] = [1,4,10,15,13,12,40,10,13,23]     //  important
let even = digits.filter { $0 % 2 == 0 }
let odd = digits.filter { $0 % 2 == 1 }
print("even", even)
print("odd", odd)
//// explnation of it if  (how we get $0)
///The closure takes an Int parameter and return a Bool to tell is item must be filtered in
//-1 let even = digits.filter { (val: Int) -> Bool in return val % 2 == 0 }
//return not needed with a single expression in the 'in'
//2- let even = digits.filter { (val: Int) -> Bool in val % 2 == 0 }
//3- let even = digits.filter { (val: Int) in val % 2 == 0 }
//4- let even = digits.filter { val in val % 2 == 0 }
//5- let even = digits.filter { $0 % 2 == 0 }

print("============Map()===============")

//The map() method allows us to transform arrays (and any kind of collection) using a transformation closure we specify.The return value will be an array of the same size, containing your transformed elements.
 
let numbers:[Int] = [1, 2, 3, 4]
let doubled = numbers.map { $0 * 2}
print(doubled)

var Items = ["John", "Paul", "George", "Ringo"]
Items.append("hoosam")
Items.insert("issa" , at: 2)
var uppercased = Items.map { $0.uppercased() }
print(uppercased)
 */
print ("===========Set=============")
/*
//A set stores distinct values of the same type in a collection with no defined ordering. You can use a set instead of an array when the order of items isn’t important, or when you need to ensure that an item only appears once.

var favouites: Set<String> = ["Rock", "Classical", "Hip hop"]
favouites.insert("jazz")   // could be insrted any where in the set unlike array
favouites.insert("arabic")
print("my avouites set contains \(favouites) items")
//favouites.append("arabic")    // append does not work in set unlike array
print("===")
let removes = "Classical"
if let remove = favouites.remove(removes) {
print("my set contains \(favouites) items")
	print("my set noe does not contains \(remove)")
}else {
    print("my set already noe does not contains \(String(describing: remove))")
}
print("===")
print("my  avouites set contains \(favouites) items")
print("===")
//or
if let ToRemove = favouites.index(of: "Hip hop") {
	favouites.remove(at: ToRemove)
}
print("my  avouites set contains \(favouites) items")
print("here=")
if favouites.contains("Hip hop") {
	print("this item \(favouites.contains("Hip hop")) does exist")
} else {
	print("this item \(favouites) (Hip hop)) does not exist")
}
favouites.update(with: "sam")
print("set contains \(favouites) items")
//Swift’s Set type doesn’t have a defined ordering
for items in favouites.sorted() {
	print("\(items)")
}
favouites.remove("Rock") //===
for (index,value) in favouites.enumerated() {
print("items \(index+1) : \(value)")
}


//Use the intersection(_:) method to create a new set with only the values common to both sets.

//Use the symmetricDifference(_:) method to create a new set with values in either set, but not both.

//Use the union(_:) method to create a new set with all of the values in both sets.

//Use the subtracting(_:) method to create a new set with values not in the specified set.
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigit: Set = [2, 3, 5, 7]
print (oddDigits.union(evenDigits).sorted())
print (oddDigits.intersection(singleDigit))
print(oddDigits.subtracting(singleDigit))
print(oddDigits.symmetricDifference(singleDigit).sorted())
//Use the “is equal” operator (==) to determine whether two sets contain all of the same values.

//Use the isSubset(of:)   method to determine whether all of the values of a set are contained in the specified set.

//Use the isSuperset(of:) method to determine whether a set contains all of the values in a specified set.

//Use the isStrictSubset(of:) or isStrictSuperset(of:) methods to determine whether a set is a subset or superset, but not equal to, a specified set.

//Use the isDisjoint(with:) method to determine whether two sets have no values in common.
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]
print (farmAnimals.isSubset(of: houseAnimals)) //fales
print (farmAnimals.isSuperset(of: houseAnimals)) //true

print (houseAnimals.isSubset(of: farmAnimals))//true
print (farmAnimals.isDisjoint(with: cityAnimals)) //true
print (farmAnimals.isStrictSubset(of: houseAnimals)) //fales


// copine arry in set to avoid doublication
var Myarry: [Int] = [1,2,3,4,5,4,3,2,1]
print("the aarray contain \(Myarry.count)")
let Myset = Set(Myarry)
print("the set now contain \(Myset.count)")
*/

print("===========Dictionary=============")
/*
//A dictionary stores associations between keys of the same type and values of the same type in a collection with no defined ordering

//The type of a Swift dictionary is written in full as Dictionary<Key, Value>, where Key is the type of value that can be used as a dictionary key, and Value is the type of value that the dictionary stores for those keys.
//empty Dictionary
//var MyDictionary: [Int :String] = [:]
//or //========
//var MyDictionary = [Int :String]()
//or
//var MyDictionary = Dictionary<Int, String> ()
var MyDictionary: [Int :String] = [:]
MyDictionary[0] = "Zero"
MyDictionary[1] = "One"
//MyDictionary[0] = "Two"
MyDictionary[0] = nil    // remove item from key
print(MyDictionary.keys)
print(MyDictionary.values)
print("\(MyDictionary[1] ?? "xero")")
//You can also initialize a dictionary with a dictionary literal  //===============

var names: [String:String] = ["HF": "Hossam Farfour", "DOB": "Date Of Birth"]
for (index,value) in names.enumerated() {
print("items \(index+1) : \(value)")
}
print(names["HF"] ?? "My Name ")
//or
var name = ["HF": "Hossam Farfour", "DOB": "Date Of Birth"]
print(name ["DOB"] ?? "My Name ")
//change key in the dictionry
name ["HF"] = "Hasna "
print(name["HF"] ?? "Hasna" )
print("The name in my dictionary contains \(name.count) items.")
//update value
if let oldValue = name.updateValue("Dublin Airport", forKey: "DOB") {
	print("The old value for DOF was \(oldValue).")
}
//print the new value
print("the new vlaue is \(name["DOB"] ?? "Changed")")
// remove value
    if let removedValue = name.removeValue(forKey: "HF") {
        print("The removed airport's name is \(removedValue).")
    } else {
        print("The dictionary doesn't contain a value for HF.")
    }
print("name is \(name)")
//insert to dictionary
name.updateValue("test", forKey: "te")
name.updateValue("gmail", forKey: "Gt")

print("the dictinart now  \(name)")
//remove
    let removedValue = name.removeValue(forKey: "te")
print(" now  \(name)")

//Iterating Over a Dictionary
for (Item,values) in name {
	print("they are \(name.keys) : \(name.values)")
}
for (Item,values) in name {
	print("that is  \(Item) : \(values)")
}
//If you need to use a dictionary’s keys or values with an API that takes an Array instance, initialize a new array with the keys or values property:
let DictionaryTakesArry = [String] (name.keys)
let DictionaryTakesArrys = [String] (name.values)
print("dictionary takes an arry.key \(DictionaryTakesArry)")
print("dictionary takes an arry.value \(DictionaryTakesArrys)")
*/
print("===========If else staments shortcuts=============")
/*
let operation = "add"
let first = 5
let second = 5
//if operation == "add" {
//	print("The sum of \(first) and \(second) is \(first + second).")
//} else {
//	print("The difference between \(first) and \(second) is \(first - second).")
//}

// the short cut of that function is
operation == "add"
? print("The sum of \(first) and \(second) is \(first + second).")
: print("The difference between \(first) and \(second) is \(first - second).")

//=========

let firsts = 10
let seconds = 20
let min: Int
let max: Int
if firsts < seconds {
	min = firsts
} else {
	min = seconds
}
if firsts > seconds {
	max = firsts
} else {
	max = seconds
}
print("first is  \(min) and second is \(max).")

//or the easiest way is====
let value1 = 40
let Value2 = 30
let mins = value1 < Value2 ? value1 : Value2
let maxs = value1 < Value2 ? Value2: value1
print("value1 is  \(mins) and seconds is \(maxs).")
//OR
let Afirst = 55
let Asecond = 25
let (Amin, Amax) = Afirst < Asecond ? (Afirst, Asecond) : (Asecond, Afirst)
print("Afirst is  \(Amin) and Asecond is \(Amax).")

//==Calling functions based on certain conditions
let number = 3
//if number % 2 == 0 {
//	print("\(number) is an even number.")
//} else {
//	print("\(number) is an odd number.")
//}

//or
print(number % 2 == 0
	  ? "\(number) is an even number."
	  : "\(number) is an odd number.")


//======

let firstName = "Hossam"
let lastName = "Farfour"
let name: String
if firstName != "" {
	if lastName != "" {
		name = firstName + " " + lastName
	} else {
		name = firstName
	}
} else {
	if lastName != "" {
		name = lastName
	} else {
		name = ""
	}
}
 */
print("===========Closures=============")
/*

//Closures are self-contained blocks of functionality that can be passed around and used in your code.
//Closures and functions are very similar. In swift functions are associated with names and but closures are not associated with a name that’s why it is called the lightweight champion.
func greatUser (for name: String) -> String {
       return "Hi there \(name)"
    }

var greetCopy = greatUser                       /// without (that mean copy the function directly in greetCopy)
print("the copy is \(greetCopy("Hossam"))")
    //or
var greetCopys = greatUser(for: "test")         /// with() (that mean copy the return and but it in  greetCopy)
    print(greetCopys)
////====

    let sayhello = {
        print("say hello")
    }

    // to make clouser it looks like that
    let SayHello = {(name: String) -> String  in
        "Hi \(name)!"
    }
let tets = SayHello ("sam")
print(tets)
let didcopy = SayHello
let did = didcopy("issa")
print(did)
//=======
func GetUserDate (for ID : Int) -> String {
    if  ID == 1990 {
        return "hello Hossam"
    }else {
        return "hello Issa"
    }
}
let DATA = GetUserDate(for: 1990) // copy return and put it in DATA
print(DATA)
//or
let data: (Int)-> String = GetUserDate  // when we copy(explained above, copy directly ) there no need for (argument lable)
let user = data(1991)
print(user)

//==========

let team = ["Issa", "Yildiz" ,"Hossam" ,"Daniz",]
//let sortedteam = team.sorted()
//print(sortedteam)

func CaptainTeam (name1 :String , name2: String) -> Bool {
    if name1 == "Hossam" {
        return true
    } else if name2 == "Hossam" {
        return false
    }
    return name1 < name2
}
let TeamFirstCaptain = team.sorted(by: CaptainTeam)
print("the team captain is \(TeamFirstCaptain)")
/////==== to make clousre
let thecaptainis = team.sorted(by: {(name1: String , name2: String) -> Bool in
    if name1 == "Hossam" {
        return true
    } else if name2 == "Hossam"{
        return false
    }
    return name1 < name2
})
print("the team captain is \(thecaptainis)")

//=======
let names: [String] = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward(_ s1: String,_ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)
print(" 1-  \(reversedNames)")
//Closure Expression Syntax

//  {(parameters) -> return type in
//	statements
//  }
//The parameters in closure expression syntax can be in-out parameters, but they can’t have a default value

//The example below shows a closure expression version of the backward(_:_:) function from above:
var reversedName = names.sorted(by: {( s1: String, s2: String) -> Bool in return s1 > s2 })
print(" 2-  \(reversedName)")
//The start of the closure’s body is introduced by the in keyword. This keyword indicates that the definition of the closure’s parameters and return type has finished, and the body of the closure is about to begin.
//or
var reversedNamed = names.sorted(by: {(s1 , s2 ) in return s1 > s2 })
print(" 3-  \(reversedNamed)")
//Implicit Returns from Single-Expression Closures
//Single-expression closures can implicitly return the result of their single expression by omitting the return keyword from their declaration, as in this version of the previous example:
var reversed = names.sorted(by: { s1, s2 in s1 > s2 } )
print(" 4-  \(reversed)")
//Shorthand Argument Names
//Swift automatically provides shorthand argument names to inline closures, which can be used to refer to the values of the closure’s arguments by the names $0, $1, $2, and so on.
var sorted = names.sorted(by: { $0 > $1 })
print(" 5-  \(sorted)")
//Operator Methods
//There’s actually an even shorter way to write the closure expression above. Swift’s String type defines its string-specific implementation of the greater-than operator (>) as a method that has two parameters of type String, and returns a value of type Bool.
var shorttend = names.sorted(by: > )
print(" 6-  \(shorttend)")

//Trailing Closures
//If you need to pass a closure expression to a function as the function’s final argument and the closure expression is long, it can be useful to write it as a trailing closure instead. You write a trailing closure after the function call’s parentheses, even though the trailing closure is still an argument to the function. When you use the trailing closure syntax, you don’t write the argument label for the first closure as part of the function call. A function call can include multiple trailing closures; however, the first few examples below use a single trailing closure.
//In swift if the last argument or parameter of a function become a closure then it is called as trailing closures.

var triling = names.sorted() { $0 > $1 }
print(" 7-  \(triling)")
//or
var trilings = names.sorted { $0 > $1 }
print(" 8-  \(trilings)")


// Global Closure
func calculatevals(num: Int)-> Int {
    return num * 1
}
// Send Trailing Closure as a Parameter
func sum(num1: Int, num2: Int, closureparam: (Int) -> (Int)) -> Int {
    var sum = 0
    for i in num1...num2 {
        sum += closureparam(i)
    }
    return sum
}
print("the sum is \(sum(num1: 0, num2: 10, closureparam: calculatevals))")
 print("===")

func someFunctionThatTakesAClosure(closure: () -> Void) {
    // function body goes here
}

// Here's how you call this function without using a trailing closure:

someFunctionThatTakesAClosure(closure: {
    // closure's body goes here
})

// Here's how you call this function with a trailing closure instead:

someFunctionThatTakesAClosure() {
    // trailing closure's body goes here
}

//Here’s how you can use the map(_:) method with a trailing closure to convert an array of Int values into an array of String values. The array [16, 58, 510] is used to create the new array ["OneSix", "FiveEight", "FiveOneZero"]:
let digitNames:[Int : String] = [
	0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
	5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
 
let numbers: [Int] = [136, 58, 510]

let strings = numbers.map {(number: Int) -> String  in
    var number = number
	var output = ""
	repeat {
        output = digitNames[number % 10]! + output //The call to the digitNames dictionary’s subscript is followed by an exclamation point (!), because dictionary subscripts return an optional value to indicate that the dictionary lookup can fail if the key doesn’t exist.
		number /= 10
	} while number > 0
	return output
}
print("they are \(strings)")
 
 //You have several options for writing closures more concisely. When a closure’s type is already known, such as the callback for a delegate, you can omit the type of its parameters, its return type, or both. Single statement closures implicitly return the value of their only statement.
  
 var Number = [2, 4, 1, 10]
 let mapp = Number.map( {(number: Int) -> Int in
     let result = 3 * number
     return result
 })
     print(mapp)
  //or
     let mappedNumbers = Number.map({ number in 3 * number }) //or  ({ $0 * 3 })
     print(mappedNumbers)

//Capturing Values
//A closure can capture constants and variables from the surrounding context in which it’s defined. The closure can then refer to and modify the values of those constants and variables from within its body, even if the original scope that defined the constants and variables no longer exists.
func makeIncrementers(_ amount: Int) -> (() -> Int) { // function return another function
    var Total = 0
    func addOne() -> Int {
        Total += amount
        return Total
    }
    return addOne
}
var increment = makeIncrementers(12)
print(increment())
print(increment())

//
func makeIncrementer(_ amount: Int) -> () -> Int { //nested function
	var Total = 0
	func incrementer() -> Int {
		Total += amount
		return Total
	}
	return incrementer  // this is returming a function to -> () -> Int above
}
let incrementByTen = makeIncrementer(10)
print(" incrementByTen  \(incrementByTen())") //10
print(" incrementByTen  \(incrementByTen())") //20
print(" incrementByTen  \(incrementByTen())") //30
let incrementBySeven = makeIncrementer(7)
print(" now incrementByTen  \(incrementBySeven())") //7
print(" now incrementByTen  \(incrementBySeven())") //14
print(" now incrementByTen  \(incrementBySeven())") //21

    //Closures and function Are Reference Types
//In the example above, incrementBySeven and incrementByTen are constants, but the closures these constants refer to are still able to increment the runningTotal variables that they have captured. This is because functions and closures are reference types.
let alsoIncrementByTen = incrementByTen
print(" incrementByTen is   \(alsoIncrementByTen())") //40

print(" incrementByTen is \(alsoIncrementByTen())") //50


//Escaping Closures======================
//A closure is said to escape a function when the closure is passed as an argument to the function, but is called after the function returns. When you declare a function that takes a closure as one of its parameters, you can write @escaping before the parameter’s type to indicate that the closure is allowed to escape.

//One way that a closure can escape is by being stored in a variable that’s defined outside the function. As an example, many functions that start an asynchronous operation take a closure argument as a completion handler. The function returns after it starts the operation, but the closure isn’t called until the operation is completed—the closure needs to escape, to be called later. For example:

var completionHandlers: [() -> Void] = []
func FunctionWithEscapingClosure(completions: @escaping () -> Void) {
	completionHandlers.append(completions)
}

//func FunctionWithNonescapingClosure(closures: () -> Void) {
//	closures()
//}

class SomeClass {
	var x = 10
    func doSomething() {
       FunctionWithEscapingClosure { self.x = 100 } //or FunctionWithEscapingClosure { [self] in x = 100}
	   // FunctionWithNonescapingClosure { x = 200 }
	}
}
let instance = SomeClass()
instance.doSomething()
print("the value is now \(instance.x)")
// Prints "200"
completionHandlers.first? ()
print(instance.x)
// Prints "100"

//If self is an instance of a structure or an enumeration, you can always refer to self implicitly. However, an escaping closure can’t capture a mutable reference to self when self is an instance of a structure or an enumeration.
//Structures and enumerations don’t allow shared mutability,

//struct SomeStruct {
//	var x = 10
//	mutating func doSomething() {
//		FunctionWithEscapingClosure { x = 100 }     // Error =====
//		FunctionWithNonescapingClosure { x = 200 }  // Ok    ======
//
//	}
//}

//Autoclosures=====================
//An autoclosure is a closure that’s automatically created to wrap an expression that’s being passed as an argument to a function. It doesn’t take any arguments, and when it’s called, it returns the value of the expression that’s wrapped inside of it. This syntactic convenience lets you omit braces around a function’s parameter by writing a normal expression instead of an explicit closure.

//An autoclosure lets you delay evaluation, because the code inside isn’t run until you call the closure. Delaying evaluation is useful for code that has side effects or is computationally expensive, because it lets you control when that code is evaluated. The code below shows how a closure delays evaluation.
var customersInLine: [String] = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)
// Prints "5"

let customerProvider = { customersInLine.remove(at: 0)}
print(customersInLine.count)
// Prints "5"

print("Now serving \(customerProvider())!")
// Prints "Now serving Chris!"
print(customersInLine.count)
// Prints "4"

//below performs the same operation but, instead of taking an explicit closure, it takes an autoclosure by marking its parameter’s type with the @autoclosure attribute. Now you can call the function as if it took a String argument instead of a closure. The argument is automatically converted to a closure, because the customerProvider parameter’s type is marked with the @autoclosure attribute.

// customersInLine is ["Ewa", "Barry", "Daniella"]
func serve(customer customerProvider: @autoclosure () -> String) {
    print(" 1 Now serving \(customerProvider())!")
}
serve(customer: customersInLine.remove(at: 0))
// Prints "Now serving Alex"

print("====Closure======")
//struct Company {
//    let name: String
//    var description: String {
//        return "Company is \(name)"
//    }
//}
//let debug = true
//func debugLog(_ message: () -> String) {  // this is cloture
//    if debug{
//        print ("Debug: \(message())")
//    }
//}
//let apple = Company(name: "Apple")
//debugLog {(apple.description)}  //this is cloure

print("=====@autoclosure======")
//struct Company {
//    let name: String
//    var description: String {
//        return "Company is \(name)"
//    }
//}
//let debug = true
//func debugLog(_ message: @autoclosure ()-> String) {
//    if debug{
//        print ("Debug: \(message())")
//    }
//}
//let apple = Company(name: "Apple")
//debugLog(apple.description)
print("====Function======")
struct Company {
    let name: String
    var description: String {
        return "Company is \(name)"
    }
}
let debug = true
func debugLog(_ message: String) {
    if debug{
        print ("Debug: \(message)")
    }
}
let apple = Company(name: "Apple")
debugLog(apple.description)
print("==========")
//If you want an autoclosure that’s allowed to escape, use both the @autoclosure and @escaping attributes. The @escaping attribute is described above in Escaping Closures.

// customersInLine is ["Ewa", "Barry", "Daniella"]
var customer: [() -> String] = []
func collectCustomer(_ customerProvider: @autoclosure @escaping () -> String) {
    customer.append(customerProvider)
}
collectCustomer(customersInLine.remove(at: 0))
collectCustomer(customersInLine.remove(at: 0))

print("Collected \(customer.count) closures.")
// Prints "Collected 2 closures."
for i in customer {
    print("Now serving \(i())!")
}
// Prints "Now serving Ewa!"
// Prints "Now serving Barry!"
///====
 
 //Setting a Default Property Value with a Closure or Function
 //If a stored property’s default value requires some customization or setup, you can use a closure or global function to provide a customized default value for that property. Whenever a new instance of the type that the property belongs to is initialized, the closure or function is called, and its return value is assigned as the property’s default value.

 //Here’s a skeleton outline of how a closure can be used to provide a default property value:

 //class SomeClass {
 //    let someProperty: SomeType = {
 //        // create a default value for someProperty inside this closure
 //        // someValue must be of the same type as SomeType
 //        return someValue
 //    }()
 //}

 //Note that the closure’s end curly brace is followed by an empty pair of parentheses. This tells Swift to execute the closure immediately. If you omit these parentheses, you are trying to assign the closure itself to the property, and not the return value of the closure.
 //If you use a closure to initialize a property, remember that the rest of the instance hasn’t yet been initialized at the point that the closure is executed. This means that you can’t access any other property values from within your closure, even if those properties have default values. You also can’t use the implicit self property, or call any of the instance’s methods.



 //The boardColors array is initialized with a closure to set up its color values:

 struct Chessboard {
     let boardColors: [Bool] = {    // this is  closure
         var temporaryBoard: [Bool] = []
         var isBlack = false
         for i in 1...8 {
             for j in 1...8 {
                 temporaryBoard.append(isBlack)
                 isBlack = !isBlack
             }
             isBlack = !isBlack
         }
         return temporaryBoard
     }() // excute closure imeditelu
     func squareIsBlackAt(row: Int, column: Int) -> Bool {
         return boardColors[(row * 8) + column]
     }
 }
 let board = Chessboard()
 print(board.squareIsBlackAt(row: 0, column: 1))
 // Prints "true" this box is black
 print(board.squareIsBlackAt(row: 0, column: 3))
 // Prints "true" this box is black
 print(board.squareIsBlackAt(row: 7, column: 7))
 // Prints "false" this box is white
 
*/

print("===========enumration=============")
/*
//An enumeration class type
//An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.
func getWeather (weather : String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "hate"
    }
}
    let tes = getWeather(weather: "sunny")
    print(tes)
    // if there are more then one type of weather here comes the power of enumration.
    enum weatherType {  // when writing each case on it is won line can call just using .name
        // enum I can add value to a cases for example with wind
        case sun
        case cloud
        case rain
        case wind (speed : Int)
        case snow
    }
    func getWeathers (weather : weatherType) -> String? {  // caases are very usefull with switch cases
//        if weather == .sun {
//            return nil
//        } else {
//            return "hate"
//        }
        //with switch I have to use all cases in enum
        switch weather {
        case .sun:
            return "like "
//       case .cloud, .wind:
//          return "not my day"
           //return "hate"
        case .wind (let speed) where speed < 10 : //with extra value in enum// here the order is switch is important because as soon as it see wind (come before checking) it will excute it without checking
            return "met"
        case .cloud, .wind:
        return "not my day"  // switch will check the wind speep first if did not mtach it will move to the next switch case
//
        case .snow, .rain:
            return "dislike"
        }
    }
print (getWeathers (weather: .wind(speed: 9))!)

//"====

enum CompassPoint {
	case north, south, east, west
}
var directionToHead = CompassPoint.north    //initial value
print("the direction is  \(directionToHead)")
directionToHead = .west
print("the direction is  \(directionToHead)")
//"===="
//Matching Enumeration Values with a Switch Statement
//You can match individual enumeration values with a switch statement:
var direction = CompassPoint.east   //initial value
print("the direction is  \(direction)")
switch direction {
	case .north:
		print("Lots of planets have a north")
	case .south:
		print("Watch out for penguins")
	case .east:
		print("Where the sun rises")
	case .west:
		print("Where the skies are blue")
}
//==

//Implicitly Assigned Raw Values  // the first var of enum assined to 1 then 2 then 3
enum Compass: Int {
	case two = 0, north, south, east, west
}
let point = Compass.south.rawValue
print(" direction raw value is \(point)")
//====

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
//Initializing from a Raw Value
let possiblePlanet = Planet(rawValue: 7)
print("possiblePlanet \(possiblePlanet)")
// possiblePlanet is of type Planet? and equals Planet.uranus


//For some enumerations, it’s useful to have a collection of all of that enumeration’s cases. You enable this by writing : CaseIterable after the enumeration’s name. Swift exposes a collection of all the cases as an allCases property of the enumeration type. Here’s an example:

enum choices: CaseIterable {
	case coffee, tea, juice
}
let numberOfChoices = choices.allCases.count
print("\(numberOfChoices) choices available")
let Choices = choices.coffee
print(" My choices is \(Choices)")
// or

for items in choices.allCases {
    print(" \(items)")
}

//Associated Values
//dealing with UPC (Universal prodect code) and QR (Quick Response code)

enum Barcode {
	case upc (Int, Int, Int, Int)
	case qrCode(String)
}
var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = Barcode.qrCode("ABCDEFGHIJKLMNOP")
switch productBarcode {
	case .upc(let numberSystem, let manufacturer, let product, let check):
		print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
	case .qrCode(let productCode):
		print("QR code: \(productCode).")
}
//or
productBarcode = Barcode.upc(12, 2345, 8764, 45)
switch productBarcode {
	case let .upc(numberSystem, manufacturer, product, check):
		print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
	case let .qrCode(productCode):
		print("QR code: \(productCode).")
}


//Recursive Enumerations//==
//A recursive enumeration is an enumeration that has another instance of the enumeration as the associated value for one or more of the enumeration cases. You indicate that an enumeration case is recursive by writing indirect before it, which tells the compiler to insert the necessary layer of indirection.

//enum Expression {
//	case number(Int)
//	indirect case addition(Expression, Expression)
//	indirect case multiplication(Expression, Expression)
//}

//or

indirect enum Expression {
	case number(Int)
	case addition(Expression, Expression)
	case multiplication(Expression, Expression)
}
func evaluate(_ expression: Expression) -> Int {
	switch expression {
		case .number( let value):
			return value
		case let .addition(left, right):
			return evaluate(left) + evaluate(right)
		case let .multiplication(left, right):
			return evaluate(left) * evaluate(right)
	}
}
let five = Expression.number(5)
let four = Expression.number(5)
let sum = Expression.addition(five, four)
let product = Expression.multiplication(sum, Expression.number(2))

print(evaluate(product))
//=====

enum CompassPointss {
	case north, south, east, west
    
	mutating func turnNorth() {
	  self = .east
	}
}
var currentDirection = CompassPointss.north
let rememberedDirection = currentDirection
currentDirection.turnNorth()

print("The current direction is \(currentDirection)")
print("The remembered direction is \(rememberedDirection)")

//===

enum EmployeeRole: String  {
    case contributor = "Contributer "
    case admin = "Admin "
}
struct Employee {
	var name: String
	var role: EmployeeRole
}

let employee1 = Employee(name: "hossam", role: .admin)
let employee2 = Employee(name: "issa", role: .contributor)
print(employee1.role)  // takes the raw value which is (case admin = "Admin ")
print(employee2.role)

*/
print("===========Lazy Stored Properties=============")
/*
//A lazy stored property is a property whose initial value isn’t calculated until the first time it’s used. You indicate a lazy stored property by writing the lazy modifier before its declaration.
//You must always declare a lazy property as a variable.
// with lazy property it will run when we called it after that evry time i call it it will give the result istanteny.
//lazy tells Swift that you don't want your variable created until the first time you access it, but once it is created, you want to keep it indefinitely for future reference
enum Level {
    case easy
    case medium
    case hard
}

struct Exam {
    var level: Level
    lazy var questions :[String] = {  // this is clouser //private (set) can be called inside the exam struct only
     //sleep (5)
    switch level {
    case .easy:
        return ["this is a easy exam"]
    case .medium:
        return ["this is a medium exam"]
    case .hard:
        return ["this is a hard exam"]
    }
  }() // call it here
}
var easyExam = Exam(level: .easy)
print(easyExam.questions)    // with lazy proerty it will wait 5 second for the first time it called then I will give the result immeditely
var hardExam = easyExam
hardExam.level = .hard                // with give the same asnswer antil it been called like
print(hardExam.questions)

print("wait for one second ")
//sleep(1)
//print(easyExam.questions)
//print(hardExam.questions)
//============

struct FamilyTree {
     init() {
         print("grearting family tree ")
    }
}

class person{
    var name : String
    lazy var familytree = FamilyTree()
     init (name: String) {
        self.name = name
    }
}
var ed = person(name: "Hossam")
print (ed.familytree) // here is accessing lazy property
//==========

struct Calculate {
	static func calGame() -> Int {
		var games: [Int] = []
		for i in 1...1000 {
            games.append(i)
        }
		return games.count
	}
}
struct player {
	var name: String
	var team: String
	var position: String
    
    //var gamePlayed = Calculate.calGame()   //here does lasy work , instead of waitng that long. it intialise when we access it just
    
//    lazy var gamePlayed = Calculate.calGame()
//
//    lazy var introduction = "now entring the game: \(name), \(position) for the \(team)"
    
	lazy var gamePlayed =  {
		return Calculate.calGame()
	}()

	lazy var introduction = {
		return "now entring the game: \(name), \(position) for the \(team)"
	}()
}
var jorden  = player(name: "hosam", team: "bulls", position: "shooting")
print (jorden.introduction)
print(jorden.gamePlayed)
print(jorden.gamePlayed)  //the power of lazy/print(jorden.gamePlaed)


class DataImporter {
	/*
	DataImporter is a class to import data from an external file.
	The class is assumed to take a nontrivial amount of time to initialize.
	*/
	var filename = "data.txt"
	// the DataImporter class would provide data importing functionality here
}
class DataManager {
    var data: [String] = []
	lazy var importer = DataImporter()
	// the DataManager class would provide data management functionality here
}
let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
// the DataImporter instance for the importer property hasn't yet been created
print(manager.importer.filename)
// the DataImporter instance for the importer property has now been created
// Prints "data.txt"

    class Student {
        var name: String
        lazy var studentInfo: String = {
            return "Welcome to Tutlane, \(self.name)!"
        }()
    init(name: String) {
    self.name = name
    }
 }

    let stu = Student(name: "Suresh")
    print(stu.studentInfo)

 */
print("====Computed Properties setter and getter====(Properties.swift)====")

    /*
//Properties associate values with a particular class, structure, or enumeration. Stored properties store constant and variable values as part of an instance, whereas computed properties calculate (rather than store) a value. Computed properties are provided by classes, structures, and enumerations. Stored properties are provided only by classes and structures.

//In addition, you can define property observers to monitor changes in a property’s value, which you can respond to with custom actions. Property observers can be added to stored properties you define yourself, and also to properties that a subclass inherits from its superclass.

//You can also use a property wrapper to reuse code in the getter and setter of multiple properties.

//Stored Properties
//Stored properties can be either variable stored properties (introduced by the var keyword) or constant stored properties (introduced by the let keyword).

struct FixedLengthRange {
	var firstValue: Int
	let length: Int
}
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
print(rangeOfThreeItems)
	// the range represents integer values 0, 1, and 2
let range: () = rangeOfThreeItems.firstValue = 6
print(range)
	// the range now represents integer values 6, 7, and 8


//====
print ("=====Computed Properties======")
//In addition to stored properties, classes, structures, and enumerations can define computed properties, which don’t actually store a value. Instead, they provide a getter and an optional setter to retrieve and set other properties and values indirectly.

 class persson {
     var name = "Hossam"
     var age = 16
     let hightinFeet = 6

     var canSighUp: Bool {         // computable function
         return age >= 18 && hightinFeet >= 6
     }
 }
 let dan = persson()
 // if dan.age >= 18 {  // in stead of this cade we can wright  computable function
 if dan.canSighUp {
     print("==can singh up")
 } else {
     print("==must be 18 or over")
 }
   
 
 //=====
struct Emplayee {
    let name: String
    var vacationallocation = 14
    var vacationtaken = 0
    var vacationremaning : Int { // the power of comuted property  // without computed property can not tell how many vacation remanning let
        get {
       return vacationallocation - vacationtaken
        }
    }
}
var archer = Emplayee(name: "Hossam")
archer.vacationtaken += 4
print("vacationremaning \(archer.vacationremaning)")
archer.vacationtaken += 4
print("vacationremaning \(archer.vacationremaning)")
print("vacation taken  \(archer.vacationtaken)") // 4 + 4
     
//====================
struct Point {
	var x = 0.0, y = 0.0
}
struct Size {
	var width = 0.0, height = 0.0
}
struct Rectangle {
	var origin = Point()
	var size = Size()
	var center: Point {           // computed property
		//the getter actually calculates and returns a new Point to represent the center of the square.
		get {
			let centerX = origin.x + (size.width / 2)
			let centerY = origin.y + (size.height / 2)
			return Point(x: centerX, y: centerY)
		}
		set(newCenter) {
			origin.x = newCenter.x - (size.width / 2)
			origin.y = newCenter.y - (size.height / 2)
		}
	}
}
var square = Rectangle(origin: Point(x: 0.0, y: 0.0),
				         size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
print(" square.center is now at (\(square.center.x), \(square.center.y))")
// initialSquareCenter is at (5.0, 5.0)
print(" square.origin is now at (\(square.origin.x), \(square.origin.y))")
//The center property is then set to a new value of (15, 15), which moves the square up and to the right, to the new position . Setting the center property calls the setter for center, which modifies the x and y values of the stored origin property, and moves the square to its new position.
square.center = Point(x: 30.0, y: 30.0)
print(" the center  is now at (\(square.center.x), \(square.center.y))")
print(" square.origin is now at (\(square.origin.x), \(square.origin.y))")


//Shorthand Setter Declaration
//If a computed property’s setter doesn’t define a name for the new value to be set, a default name of newValue is used. Here’s an alternative version of the Rectangle structure that takes advantage of this shorthand notation:

struct AlternativeRect {
	var origin = Point()
	var size = Size()
	var center: Point {
		get {
			let centerX = origin.x + (size.width / 2)
			let centerY = origin.y + (size.height / 2)
			return Point(x: centerX, y: centerY)
		}
		set {
			origin.x = newValue.x - (size.width / 2)
			origin.y = newValue.y - (size.height / 2)
		}
	}
}
var squares = AlternativeRect (origin: Point(x: 0.0, y: 0.0),
							   size: Size(width: 10.0, height: 10.0))
let initialSquareCenters = squares.center
print("square(\(squares.origin.x), \(squares.origin.y))")
// initialSquareCenter is at (5.0, 5.0)
squares.center = Point(x: 15.0, y: 15.0)
print("square.is(\(squares.origin.x), \(squares.origin.y))")
 //=======
     
//set / get act basically like two methods that are evoked by calling upon the property. That means, declaring a property with set / get does not allocate the memory for that property.

  //On the contrary, properties with willSet / didSet DO store values.

//I get the product of x and y. Also, you would use the set to change other variables (not the computed property itself)
 struct testing {
     var x = 5
     var y = 5
     var number: Int {
         get {
             return x * y
         }
         set {
             x = newValue / 2  // 100/2 = 50
             y = newValue / 1   //100/1 = 100    //100x50 = 5000
         }
     }
 }

 var s = testing()
 print("the (get) number is \(s.number)")  //get 5* 5 =  25
s.number = 100                   // set
print ("the set x is now  \(s.x )") //50
print ("the set y is now  \(s.y )") //100
print("now the number is \(s.number)") //5000
//=========
   
struct employee {
    var name: String
    var annualSalary: Double
    var weekPerYear: Int
    var hourPerday: Double

    var weeklySalarey : Double {  // Computed Properties   get only (read  only)
     return annualSalary / Double(weekPerYear)  // can add return or omit it
    }

    var hourlyWage : Double {
        get {
            weeklySalarey / (hourPerday * 5)
        }
        set {
            annualSalary = newValue * hourPerday
        }
    }
}
var employee103 = employee(name: "hossam", annualSalary: 22_000, weekPerYear: 50, hourPerday: 7.5)
print(" employee name is \(employee103.name) and salary is  \(employee103.weeklySalarey)")
print("employee103 hourlyWage is \(employee103.hourlyWage)")  // - use  7.5 x 5 = 37.5 ≠> 440 ÷ 37.5= 11.73
employee103.name = "ali"
employee103.hourlyWage = 15  // use setter
employee103.annualSalary = 24000
print(" new employee name is \(employee103.name) and salary is  \(employee103.weeklySalarey)") //24000÷50=480
print("  and hourly wage is  \(employee103.hourlyWage)")     // 7.5 x 5 = 37.5 ≠> 480 ÷ 37.5 = 12.8
print("annualSalary is  \(employee103.annualSalary)")
//=========

//Read-Only Computed Properties
//A computed property with a getter but no setter is known as a read-only computed property. A read-only computed property always returns a value, and can be accessed through dot syntax, but can’t be set to a different value.

//You must declare computed properties—including read-only computed properties—as variable properties with the var keyword, because their value isn’t fixed

struct Cuboid {
	var width = 0.0, height = 0.0, depth = 0.0
	var volume: Double {
		return width * height * depth
	}
}
let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print("the volume of fourByFiveByTwo is \(fourByFiveByTwo.volume)")

  
print ("=====Property Observers=====")
//Property observers observe and respond to changes in a property’s value. Property observers are called every time a property’s value is set, even if the new value is the same as the property’s current value.

//You can add property observers in the following places:

     //1-Stored properties that you define

     //2-Stored properties that you inherit

    //3-Computed properties that you inherit

//You have the option to define either or both of these observers on a property:
   //-willSet is called just before the value is stored.
   //-didSet is called immediately after the new value is stored.
 
class StepCounter {
	var totalSteps: Int = 0 {   //Property Observers
		willSet {       //or willSet (new Name)
			print("About to set totalSteps to \(newValue)")  //  \(new Name)")
		}
		didSet {
			if totalSteps > oldValue  {
				print("Added \(totalSteps - oldValue) steps")
			}
		}
	}
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
// About to set totalSteps to 200
// Added 200 steps
stepCounter.totalSteps = 360
// About to set totalSteps to 360
// Added 160 steps
stepCounter.totalSteps = 896
// About to set totalSteps to 896
// Added 536 steps
//============================
     
struct Game {
    var Score = 0
}
var game = Game()
game.Score += 10
print("the score is \(game.Score)")
game.Score += -3
print("the score is \(game.Score)")
game.Score += 5
print("the score is \(game.Score)")

// here is the power of Property Observers comes
struct Games {
    var Score = 0 {
        willSet {
            print("willset is used \(Score)")
         }
       didSet {
        print("the score using didSet is \(Score)")     // will tell each time the s`core is changed
         }
    }
}
var games = Games()
games.Score += 10
games.Score += -3
games.Score += 5

//====================
     
struct SomeGame {
    var Score = 0
    var AllScore: Int {
   get {
       return Score
    }
//        set {
//            print("the new score is \(newValue)") // here setter never been used
//        }
    }
}
var didgame = SomeGame()
didgame.Score += 10
print("the score is \(didgame.Score)")
didgame.Score += -3
print("the score is \(didgame.Score)")
didgame.Score += 5
print("the score is \(didgame.Score)")
print(" All score is  \(didgame.AllScore)")
//===================
     
struct App {
    //var contacts = [String]() {    //Property Observers
    var contacts: [String] = [] {
        willSet {
            print("current value is \(contacts.count)")
            print("new value will set \(newValue)")
        }
        didSet {
            print("there are now \(contacts.count) contects")
            print("the old value was \(oldValue)")
        }
    }
}
var app = App()
app.contacts.append("hossam")
app.contacts.append("issa")
app.contacts.append("yildis")
app.contacts.append("issam")
print(app.contacts.count)
//=====================
     
struct Apps {
    var contacts = [String] ()
    var call : String {
        get {                              //Computed Properties
             return "there are now \(contacts) contects"
        }
        set {
            print("current value is \(contacts)")
            print("new value get set \(newValue)")
        }
        
    }
}
var getset = Apps()
getset.contacts.append("ali")
print("1 \(getset.contacts)")
print("2 \(getset.call)")
getset.contacts.append("ahmad")
getset.contacts.append("adel")
getset.contacts.append("yazan")
print("3 \(getset.call)")
print(getset.contacts.count)
   
//====================
     
//If you pass a property that has observers to a function as an in-out parameter, the willSet and didSet observers are always called. This is because of the copy-in copy-out memory model for in-out parameters: The value is always written back to the property at the end of the function


//Property Wrappers============

//A property wrapper adds a layer of separation between code that manages how a property is stored and the code that defines a property. For example, if you have properties that provide thread-safety checks or store their underlying data in a database, you have to write that code on every property. When you use a property wrapper, you write the management code once when you define the wrapper, and then reuse that management code by applying it to multiple properties.

   
@propertyWrapper
struct Box {
    var value = 0
    var wrappedValue : Int {
        get { value > 12 ? value : 40 } //greater than 12 otherwise will take 40
        set { value = newValue }
    }
}
struct Food {
    @Box var x: Int       //applying @propertyWrapper // the compalier generate code to access property
}
var dids = Food()
print ("the x now is \(dids.x)")
dids.x = 45        //  must be atleast 12 otherwise will get 40
print ("the x now is \(dids.x)")

// or =============
//

struct Boxs {
    var value = 0
    var wrappedValues : Int {
        get { value > 12 ? value : 40 } //greater than 12 otherwise will take 40
        set { value = newValue }
    }
}
struct foods {
    var x = Boxs()
    var hights: Int {
     get {
         x.wrappedValues
    }
    set {
        x.wrappedValues = newValue
    }
  }
}
var did = foods()
print ("the x.wrappedValue is \(did.x)")
print ("the x.wrappedValue is \(did.hights)")
did.hights = 16            //  must be atleast 12 otherwise will get 40
print ("the x.wrappedValue is \(did.hights)")
print ("the x.wrappedValue is \(did.x)")
//================================================

     
@propertyWrapper       // when we create @propertyWrapper it does need var wrappedValue : Int
struct TwelveOrLess {
    var number = 0
	var wrappedValue : Int {
		get { return number }  // can delete return here
        set { number = min(max (newValue, 12),40 )}  // betwen 12 and 40
	}                                               // or min(newValue, 12)  //less than or equal to 12,
}
//The setter ensures that new values are less than or equal to 12, and the getter returns the stored value.
struct SmallRectangle {
	@TwelveOrLess var height: Int        //atributes
	@TwelveOrLess var width: Int
}

var rectangle = SmallRectangle()
print("hight \(rectangle.height)")
print("width \(rectangle.width)")
// Prints "0" "0"

rectangle.height = 10       // min must be 12 otherwise will get min value
print("hight \(rectangle.height)") //12
print("width \(rectangle.width)")  //0

rectangle.height = 45      // max must be 40 other withwise it will take max 40
print("hight \(rectangle.height)") //40
print("width \(rectangle.width)") //0


//========= OR


struct TwelveOrLesss {
    var maximum = 40
    var number = 0
    var wrappedValues : Int {
        get { return number }
        set { number = min(max (newValue, 12),maximum )}
    }
}

struct SmallRectangless {
    var _height = TwelveOrLesss()
    var _width = TwelveOrLesss()
	var heights: Int {
        get { return _height.wrappedValues }
		set { _height.wrappedValues = newValue }
	}
	var widths: Int {
		get { return _width.wrappedValues }
		set { _width.wrappedValues = newValue }
	}
}
var rectangless = SmallRectangless()
print(" _hight \(rectangless.heights)")
print(" _width \(rectangless.widths)")
// Prints "0"

rectangless.heights = 10
print(" _hight \(rectangless.heights)")
print(" _width \(rectangless.widths)")


rectangless.heights = 45
print(" _hight \(rectangless.heights)")
print(" _width \(rectangless.widths)")

print(" _hight \(rectangless._height)")
print(" _width \(rectangless._width)")

//Setting Initial Values for Wrapped Properties
//The code in the examples above sets the initial value for the wrapped property by giving number an initial value in the definition of TwelveOrLess. Code that uses this property wrapper can’t specify a different initial value for a property that’s wrapped by TwelveOrLess—for example, the definition of SmallRectangle can’t give height or width initial values. To support setting an initial value or other customization, the property wrapper needs to add an initializer. Here’s an expanded version of TwelveOrLess called SmallNumber that defines initializers that set the wrapped and maximum value:
 
@propertyWrapper
struct SmallNumber {
	private var maximum: Int
	private var number: Int

	var wrappedValue: Int {
		get { return number }
		set { number = min(newValue, maximum)}
	}

	init() {
		maximum = 12
		number = 0
	}
	init(wrappedValue: Int) {
		maximum = 12
		number = min(wrappedValue, maximum)
	}
	init(wrappedValue: Int, maximum: Int) {
		self.maximum = maximum
		number = min(wrappedValue, maximum)
	}
}

//When you apply a wrapper to a property and you don’t specify an initial value, Swift uses the init() initializer to set up the wrapper. For example:
struct ZeroRectangle {
    @SmallNumber var height: Int
    @SmallNumber var width: Int
}

var zeroRectangle = ZeroRectangle()
print(zeroRectangle.height, zeroRectangle.width)
 //Prints "0 0"
zeroRectangle.height = 20  // must be between 0 and 12
zeroRectangle.width = 11
print(zeroRectangle.height, zeroRectangle.width)

//or

struct UnitRectangle {
    @SmallNumber(wrappedValue: 13) var height: Int   // = 13   // will not allow mor than 12
    @SmallNumber var width: Int = 11
}
var unitRectangle = UnitRectangle()
print(unitRectangle.height, unitRectangle.width)


struct NarrowRectangle {
    @SmallNumber(wrappedValue: 4, maximum: 20) var height: Int // any number but not more than maximum
    @SmallNumber(wrappedValue: 5, maximum: 20) var width: Int
}
var narrowRectangle = NarrowRectangle()
print(narrowRectangle.height, narrowRectangle.width)

narrowRectangle.height = 100
narrowRectangle.width = 100
print(narrowRectangle.height, narrowRectangle.width)   // will get maximum number here is 20
//==

struct MixedRectangle {
    @SmallNumber var height: Int = 1
    @SmallNumber(maximum: 9) var width: Int = 8   // pick up maximum: 9
}

var mixedRectangle = MixedRectangle()
print(" 1- \(mixedRectangle.height)")
// Prints "1"
mixedRectangle.height = 13
print(" 2- \(mixedRectangle.height)")
// Prints "12"
print(" 3- \(mixedRectangle.width)")
// Prints "1"
mixedRectangle.width = 20
print(" 4- \(mixedRectangle.width)")
// Prints "12"


//Projecting a Value From a Property Wrapper                      ///////========did not nuderstand
//In addition to the wrapped value, a property wrapper can expose additional functionality by defining a projected value—for example, a property wrapper that manages access to a database can expose a flushDatabaseConnection() method on its projected value. The name of the projected value is the same as the wrapped value, except it begins with a dollar sign ($). Because your code can’t define properties that start with $ the projected value never interferes with properties you define.

@propertyWrapper
struct AnyNumber {
    private var number: Int
    private(set) var projectedValue: Bool

    var wrappedValue: Int {
        get { return number }
        set {
            if newValue > 12 {
                number = 12
                projectedValue = true
            } else {
                number = newValue
                projectedValue = false
            }
        }
    }

    init() {
        self.number = 0
        self.projectedValue = false
    }
}
struct SomeStructure {
    @AnyNumber var someNumber: Int
}
var someStructure = SomeStructure()

someStructure.someNumber = 4
print(someStructure.$someNumber)
// Prints "false"

someStructure.someNumber = 55
print(someStructure.$someNumber)
// Prints "true"

enum size {
    case small, large
}

struct SizedRectangle {
    @AnyNumber var height: Int
    @AnyNumber var width: Int

    mutating func resize(to size: size) -> Bool {
        switch size {
        case .small:
            height = 10
            width = 20
        case .large:
            height = 100
            width = 100
        }
        return $height || $width
    }
}
//==
//You can apply a property wrapper to a local stored variable, but not to a global variable or a computed variable. For example, in the code below, myNumber uses SmallNumber as a property wrapper.
func someFunction() {
    @SmallNumber var myNumber: Int = 0

    myNumber = 10
    // now myNumber is 10

    myNumber = 24
    // now myNumber is 12
}
*/
print("============Instance Methods and Type Methods , mutating and self============")
/*
//In swift, Properties are the attributes of specific name type but methods are the behaviors which extend its functionality. In swift, Methods are similar to functions that are associated with a special type.

//In swift, we have two types of methods available those are
//Instance Methods
//Type Methods

//define an instance method at structures, classes, and enumeration which enclosed a specific task and functionality with their instances. We can access the value of the method by creating the instance of the method.

//Instance methods are functions that belong to instances of a particular class, structure, or enumeration. They support the functionality of those instances
 
//Same way we can define type method in structures, classes and enumerations, which are associated with the type itself.
//Syntax of Swift Methods:
//func funcname(Parameters: Datatype) -> returntype {
////Varibales,Methods Declaration here
//return parameters
//}

//Swift Method Example
    func hellomsg(message: String) -> String {
    return message
    }
    var InstanceMethod = hellomsg(message: "Welcome to Tutlane")

    print(InstanceMethod)
//Instance Methods//
//Instance methods are the functions that are associated with a particular class, enumeration or structures. These instance methods will provide the functionality to access its properties and methods directly.
//In  Instance methods can not use class and static func.
//Instance methods are functions that belong to instances of a particular class, structure, or enumeration. They support the functionality of those instances, either by providing ways to access and modify instance properties, or by providing functionality related to the instance’s purpose. Instance methods have exactly the same syntax as functions

    class Student {
    var name = ""
    func studentName(Name: String) {  // instane method
    name = Name
    print(name)
   }
}
    var info = Student()
    info.studentName(Name: "vSuresh")
    info.studentName(Name: " Dasari")
    info.studentName(Name: " ali")
    
//==================

    struct ValType {
    var num = 50
    mutating func calculate() -> Int {
            self.num = num + 20
            return num
       }
    }
    var insval = ValType()
    print("inst \(insval.calculate())")
print("num is \(insval.num)")
//================

    class Samples {
    var number = 10
    func addition(num: Int) -> Int {
        return self.number + 10 + num
    }
    }
//    let add = Samples.addition(num: 90)  can not access instance method directely
//    print(add)
let did = Samples()
print ("instance  \(did.addition(num: 12))")
print ("number is   \(did.number)")

// instance type we do not use static
// we do not use mutating in class and it does need initilizer
//self the current value of the struct  55 "Hossam" true
//Self the current type of the struct   int String  Bool

struct SampleStruct {
  var num = 43
     func normFunc(z: Int) -> Int {
     return self.num + 56 + z
  }
    mutating func mutFunc(x: Int) -> Int {
    num = num + 456
    return num + x
  }
    func sampleFunc() -> Int {
    return num + 34
 }
}
  var insfn = SampleStruct()
  print("1- \(insfn.normFunc(z: 45))") //43 + 56 + 45 = 144
  //print("3- \(insfn.sampleFunc())")    // 43 + 34 = 77  calling before mutating func
  print("2- \(insfn.mutFunc(x: 344))") //43 + 456 + 344 = 843
print("num is  \(insfn.num)") //449
  print("3- \(insfn.sampleFunc())")    //456 + 43 = 499 + 34 = 533
  print("4- \(insfn.num)")             //456 + 43 = 499

  var exin = SampleStruct()
  print("5- \(exin.num)") // goes back to 43

//=====


//Instance Methods in class
class Counter {
    var count = 0
	func increment() {
         self.count += 1  // or count += 1
	}
    func increment (by amount: Int) {
		self.count += amount
        // return self = Counter(count: count + amount) //can not be used in class
	}
	func reset() {
		count = 0
	}
}
let counter = Counter()
counter.increment()
print(counter.count)
// the counter's value is now 1
counter.increment(by: 5)
print(counter.count)
// the counter's value is now 6
counter.reset()
// the counter's value is now 0
print(counter.count)

// instance methed using struct
struct Counters {
   var count = 0
   mutating func increment()  {
        return self.count += 1
    }
   mutating func increment (by amount: Int) {
          return self.count += amount
         //or // just in struct// can not be used in class
         // return self = Counters(count: count + amount)
       
    }
   mutating func reset() {
         return count = 0
    }
}
var counters = Counters()
counters.increment()
print(counters.count)
// the counter's value is now 1
counters.increment(by: 3)
print(counters.count)
// the counter's value is now 4
counters.reset()
// the counter's value is now 0
print(counters.count)

//The self Property
//Every instance of a type has an implicit property called self, which is exactly equivalent to the instance itself. You use the self property to refer to the current instance within its own instance methods.
 
//the self property to distinguish between the parameter name and the property name.////////////////////////

struct Point {
	var x = 0.0, y = 0.0
	  func isToTheRightOf(x: Double) -> Bool {
	     return self.x > x
	}
}
var somePoint = Point(x: 4.0, y: 5.0)
if somePoint.isToTheRightOf(x: 2.0) {
	print(somePoint.isToTheRightOf(x: 3.0)) // because x4.0
    print(somePoint.x)
    print(somePoint.y)
	somePoint = Point(x: 20, y: 100)
	print(somePoint.x)
    print(somePoint.y)
}

//Modifying Value Types from Within Instance Methods
//Structures and enumerations are value types. By default, the properties of a value type can’t be modified from within its instance methods.
//
//However, if you need to modify the properties of your structure or enumeration within a particular method, you can opt in to mutating behavior for that method. The method can then mutate (that is, change) its properties from within the method

class Pon {
     init(x: Double , y: Double) {
        self.x = x
        self.y = y
    }
    // class does not have memeberwise initilizer
    var x = 0.0, y = 0.0
     func moveBy(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}
var somePon = Pon (x: 1.0, y: 1.0)
somePon.moveBy(x: 1.0, y: 2.0)
print("The pon is now at (\(somePon.x), \(somePon.y))")


//=====
struct Points {
	var x = 0.0, y = 0.0
	mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        self.x += deltaX
        self.y += deltaY
	}
}
var somePoints = Points(x: 1.0, y: 1.0)
somePoints.moveBy(x: 1.0, y: 2.0)
print("The point is now at (\(somePoints.x), \(somePoints.y))")

//or
//self//
//Assigning to self Within a Mutating Method
//Mutating methods can assign an entirely new instance to the implicit self property. The Point example shown above could have been written in the following way instead:

struct Pointss {
    var count = 0.0
    var y = 0.0
    
	mutating func moveBys(by deltaXs: Double, y deltaYs: Double) {
		return self = Pointss(count: count + deltaXs, y: y + deltaYs)
	}
}
var somePointss = Pointss(count: 1.0, y: 1.0)
somePointss.moveBys(by: 4.0, y: 4.0)
print("somePointss is now at (\(somePointss.count), \(somePointss.y))")

//Mutating methods for enumerations can set the implicit self parameter to be a different case from the same enumeration:
enum TryStateSwitch {
	case  off, low, high
	mutating func nexts() {
		switch self {
			case .off:
				self = .low
			case .low:
				self = .high
			case .high:
				self = .off
		}
	}
}
var ovenLight = TryStateSwitch.off
ovenLight.nexts()
print(ovenLight)
// ovenLight is now equal to .high
ovenLight.nexts()
print(ovenLight)
// ovenLight is now equal to .high
ovenLight.nexts()
print(ovenLight)
// ovenLight is now equal to .off


enum Animals {
    case Cat, Dog, Elephant
    mutating func Types() {
        switch self {
       case .Cat:
          self = .Dog
       case .Dog:
          self = .Elephant
       case .Elephant:
          self = .Cat
       }
    }
}
    var insInfo = Animals.Cat
    insInfo.Types()
    print("1- \(insInfo)")
    insInfo.Types()
    print("2- \(insInfo)")
    insInfo.Types()
    print("3- \(insInfo)")

//====

//========Type Methods=======
//Instance methods are methods that you call on an instance of a particular type. You can also define methods that are called on the type itself. These kinds of methods are called type methods. You indicate type methods by writing the static keyword before the method’s func keyword. Classes can use the class keyword instead, to allow subclasses to override the superclass’s implementation of that method.

//instance mothed we use self to indicate that instance mothed belong to that class or struct or enumration , but in type mothed we use static (struct) and calss (class)


//In classes, we can represent type methods by using func keyword and in structures and enumerations we can define type methods by using static keyword before the methods func keyword.

class SomeClass {
     class func someTypeMethod() {
        // type method implementation goes here
        print("hello from type mothed")
    }
}
//var change = SomeClass()
SomeClass.someTypeMethod()

//========================
    class Sample {
        class func addition(num: Int) -> Int {
        return (10 + num)
     }
  }
    struct Calculate {
          static func multiplication(num: Int) -> Int {
          return (10 * num)
     }
  }
    let addval = Sample.addition(num: 90)
    print(addval)
    print(Sample.addition(num: addval))
    let prodval = Calculate.multiplication(num: 5)
    print(prodval)
    print(Calculate.multiplication(num: prodval))

//==========

//type mothed using struct is very similer to a class

struct School {
    static var studentCount = 0
    static func add (student: String) {
        print("\(student) has joined the school")
       studentCount += 1
    }
}
School.add(student: "Hossam")
print(School.studentCount)
School.add(student: "issa")
print(School.studentCount)
// instance type ==
struct Schools {
    var studentCount = 0
     mutating func add (student: String) {
        print("\(student) has joined the school")
          return studentCount += 1
    }
}
var sis = Schools()
sis.add(student: "sam")
print(sis.studentCount)
sis.add(student: "yildiz")
print(sis.studentCount)
//=========================

class  songs {
    var name: String
    var age: Int
    static var favouriteSong = "anysong"
    class func change (student: String) {
         favouriteSong = student
   }
    
     init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
let funs = songs(name: "hossam", age: 31)
print("my favoirite song is \(songs.favouriteSong)")
songs.change(student: "ARABICA")
print("my favoirite song is \(songs.favouriteSong)\n")
//========================

struct LevelTracker {
    static var highestUnlockedLevel = 1
	       var currentLevel = 1

	static func unlock(_ level: Int) {
		if level > highestUnlockedLevel {
			highestUnlockedLevel = level
		}
	}

	static func isUnlocked(_ level: Int) -> Bool {
		return level <= highestUnlockedLevel
	}

	@discardableResult
   // The Boolean return value of advance(to:) is ignored, because the level is known to have been unlocked by the call to LevelTracker.unlock(_:)
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
		tracker.advance(to: level + 1)  // to avoid worning we add @discardableResult
	}
	init(name: String) {
		playerName = name
	}
}
var player = Player(name: "Hossam")  //create an instance of the Player class
player.complete(level: 1)
print("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")
// Prints "highest unlocked level is now 2"
//If you create a second player, whom you try to move to a level that’s not yet unlocked by any player in the game, the attempt to set the player’s current level fails:
player = Player(name: "Beto")
if player.tracker.advance(to:2) {
    print("player is now on level 2")
} else {
    print("level 2 hasn't yet been unlocked")
}
//player.complete(level: 2)
//print("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")
player = Player(name: "issa")
if player.tracker.advance(to:3) {
    print("player is now on level 3")
} else {
    print("level 3 hasn't yet been unlocked")
}

player = Player(name: "yildz")
if player.tracker.advance(to:6) {
	print("player is now on level 6")
} else {
	print("level 6 hasn't yet been unlocked")
}
// Prints "level 6 hasn't yet been unlocked"

 */
print("===============#file =#line =#function ================")
/*
func log (_ message: String ,
          _ file:  String = #file,
          _  line: Int = #line,
          _ function: String = #function) {
    print("[\(file) : \(line)] \(function) - \(message)")
}
//func foo () {
//    log ("hello")
//}
//foo()
log("hello")
 */
print("===============Initializers==================")
/*
//Initializers are called to create a new instance of a particular type. In its simplest form, an initializer is like an instance method with no parameters, written using the init keyword:
struct Fahrenheit {
	var temperature: Double
	init() {
		temperature = 32.0
	}
}
var f = Fahrenheit()
print("The default temperature is \(f.temperature)° Fahrenheit")
//You can write the Fahrenheit structure from above in a simpler form by providing a default value for its temperature property at the point that the property is declared:
//or
struct Fahrenheits {
    init() {
    }
    var temperatures = 12.0
}
var fs = Fahrenheits()
print("The default temperature is \(fs.temperatures)° Fahrenheit")
 
//Initialization Parameters
//You can provide initialization parameters as part of an initializer’s definition, to define the types and names of values that customize the initialization process. Initialization parameters have the same capabilities and syntax as function and method parameters.

struct Celsius {
   
	var temperatureInCelsius: Double
	init(fromFahrenheit fahrenheit: Double) {
		temperatureInCelsius = (fahrenheit - 32.0) / 1.8
	}
	init(fromKelvin kelvin: Double) {
		temperatureInCelsius = kelvin - 273.15
	}
}
let BoilingPoint = Celsius(fromFahrenheit: 212.0)
print( "boilingPoint.temperatureInCelsius is \(BoilingPoint.temperatureInCelsius)")
let freezingPoint = Celsius(fromKelvin: 273.15)
print(" freezingPointOfWater.temperatureInCelsius is \(freezingPoint.temperatureInCelsius)")


//Parameter Names and Argument Labels
// initializers don’t have an identifying function name before their parentheses in the way that functions and methods do. Therefore, the names and types of an initializer’s parameters play a particularly important role in identifying which initializer should be called. Because of this, Swift provides an automatic argument label for every parameter in an initializer if you don’t provide one.

struct Color {
	let red, green, blue: Double
	init(red: Double, green: Double, blue: Double) {
		self.red = red
		self.green = green
		self.blue  = blue
	}
	init(white: Double) {
		red   = white
		green = white
		blue  = white
	}
}
//Both initializers can be used to create a new Color instance, by providing named values for each initializer parameter:
let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
print(magenta.red)
let halfGray = Color(white: 0.5)
print(halfGray.red)
print(halfGray.green)
print(halfGray.blue)

//Optional Property Types
//The following example defines a class called SurveyQuestion, with an optional String property called response:
//automatically initialized with a value of nil
class SurveyQuestion {
	var text: String
	var response: String?  // optional will be nil
    
	init(text: String) {
		self.text = text
	}
	func ask() {
		print(text)
	}
}
let cheeseQuestion = SurveyQuestion(text: "Do you like cheese?")
cheeseQuestion.ask()
cheeseQuestion.response = "Yes, I do like cheese."
print(cheeseQuestion.response ?? "Yes")


//Default Initializers
//Swift provides a default initializer for any structure or class that provides default values for all of its properties and doesn’t provide at least one initializer itself. The default initializer simply creates a new instance with all of its properties set to their default values.
//
//This example defines a class called ShoppingListItem, which encapsulates the name, quantity, and purchase state of an item in a shopping list:

struct ShoppingList {
    
	var name: String?
    var quantity = 1
    var purchased = false
}
var item = ShoppingList()
item.name = "coc"
item.quantity = 2
item.purchased = true

print("name is \(item.name) and quantity: \(item.quantity)")

//Memberwise Initializers for Structure Types
//Structure types automatically receive a memberwise initializer if they don’t define any of their own custom initializers. Unlike a default initializer, the structure receives a memberwise initializer even if it has stored properties that don’t have default values.

struct size {
    init(width: Double = 0.0 , height: Double = 0.0 ) {  // Memberwise Initializers
        self.width = width
        self.height = height
    }
	var width = 0.0, height = 0.0
}
var twoByTwo = size(width: 2.0, height: 3.0)
print(twoByTwo.width, twoByTwo.height)
twoByTwo.width = 9.0
print(twoByTwo.width, twoByTwo.height)

let zeroByTwo = size(height: 5.0)
print(zeroByTwo.width, zeroByTwo.height)
// Prints "0.0 5.0"

let zeroByZero = size()                       //default Initializer
print(zeroByZero.width, zeroByZero.height)
// Prints "0.0 0.0


//Initializer Delegation for Value Types
//Initializers can call other initializers to perform part of an instance’s initialization. This process, known as initializer delegation, avoids duplicating code across multiple initializers.
struct Size {
	var width = 0.0, height = 0.0
}
struct Point {
	var x = 0.0, y = 0.0
}
struct Rect {
	var origin = Point()
	var size = Size()
    
	init() {}                              // default Initializer
//	init(origin: Point, size: Size) {      // Memberwise Initializer
//		self.origin = origin
//		self.size = size
//	}
   // or
    init(origin: Point = Point(), size: Size = Size()) {   // Memberwise Initializer
        self.origin = origin
        self.size = size
    }
	init(center: Point, size: Size) {        // Delegation Initializer
		let originX = center.x - (size.width / 2)
		let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
	}
}
 //default Initializer
let basicRect = Rect()
print("basicRect size is \(basicRect.size)")
print("basicRect origin is \(basicRect.origin)")
// basicRect's origin is (0.0, 0.0) and its size is (0.0, 0.0)

// Memberwise Initializer//
//Classes don’t have a default memberwise initializer
let originRect = Rect(origin: Point(x: 2.0, y: 2.0),size: Size(width: 5.0, height: 5.0))
print("originRect size is \(originRect.origin)")
print("originRect origin is \(originRect.size)")
// originRect's origin is (2.0, 2.0) and its size is (5.0, 5.0)

// Delegation Initializer//
let centerRect = Rect (center: Point(x: 10.0, y: 10.0), size: Size(width: 3.0, height: 3.0))
print("centerRect size is \(centerRect.origin)")
print("centerRect origin is \(centerRect.size)") // 3 , 3
// centerRect's origin is (8.5, 8.5) and its size is (3.0, 3.0)  // 3÷2=1.5 - 10 = 8.5


//Class Inheritance and Initialization
//Swift defines two kinds of initializers for class types to help ensure all stored properties receive an initial value. These are known as designated initializers and convenience initializers.

//Convenience initializers are secondary, supporting initializers for a class. You can define a convenience initializer to call a designated initializer from the same class as the convenience initializer with some of the designated initializer’s parameters set to default values. You can also define a convenience initializer to create an instance of that class for a specific use case or input value type

//Automatic Initializer Inheritance
//As mentioned above, subclasses don’t inherit their superclass initializers by default. However, superclass initializers are automatically inherited if certain conditions are met. In practice, this means that you don’t need to write initializer overrides in many common scenarios, and can inherit your superclass initializers with minimal effort whenever it’s safe to do so.

///Designated and Convenience Initializers in Action
class Food {
	var name: String
	init(name: String) {
		self.name = name
        print ("the meal name is \(name)")
	}
	convenience init() {
		  self.init(name: "[Unnamed]")
	}
}
let namedMeat = Food(name: "beef")       //designated initializer
print(namedMeat.name)

let mysteryMeat = Food()           //convenience initializer //convenience init call designated init
print(mysteryMeat.name)

class RecipeIngredient: Food {

	   var quantity: Int

	   init(name: String, quantity: Int) {
		self.quantity = quantity
		super.init(name: name)
	}
    //convenience init can not be failable init
	override convenience init(name: String) {
		self.init(name: name, quantity: 2)
	}
}
let oneMysteryItem = RecipeIngredient()      // takes the convenience init
print("here meal name is \(oneMysteryItem.name) + quantity \(oneMysteryItem.quantity)")

let oneBacon = RecipeIngredient(name: "lamb meat")
print(oneBacon.name)
print(oneBacon.quantity)
let sixEggs = RecipeIngredient(name: "Eggs", quantity: 6)
print("\(sixEggs.name) + \(sixEggs.quantity)")

class ShoppingListItems: RecipeIngredient {
	var purchased = false
	var description: String {  // computed property
		var output = "\(quantity) x \(name)"
		output += purchased ? " ✔" : " ✘"
		return output
	}
}
////You can use all three of the inherited initializers to create a new ShoppingListItem instance:
var breakfastList = [
	ShoppingListItems(),
	ShoppingListItems(name: "lamp"),
	ShoppingListItems(name: "cheken", quantity: 4)]
breakfastList[0].name = "Orange juice"   //the first item in the aray is "Orange juice" otherwise is[Unnamed]"
breakfastList[0].purchased = true
breakfastList[1].purchased = true
for items in breakfastList {
	print(items.description)
}

//Failable Initializers
//It’s sometimes useful to define a class, structure, or enumeration for which initialization can fail. This failure might be triggered by invalid initialization parameter values, the absence of a required external resource, or some other condition that prevents initialization from succeeding.

//Strictly speaking, initializers don’t return a value. Rather, their role is to ensure that self is fully and correctly initialized by the time that initialization ends. Although you write return nil to trigger an initialization failure, you don’t use the return keyword to indicate initialization success.

let wholeNumber: Double = 12345.0
let pi: Double = 3.14159

if let valueMaintained = Int(exactly: wholeNumber) {
	print("\(wholeNumber) conversion to Int maintains value of \(valueMaintained)")
}
// Prints "12345.0 conversion to Int maintains value of 12345"

if let valueChanged = Int(exactly: pi) { // valueChanged is of type Int?, not Int
print(" \(pi) conversion to Int valueChanged value of \(valueChanged)")  // it is nil
} else {
	print("\(pi) conversion to Int doesn't maintain value")
}
//=========

struct Person {
    var ID: String
    init?(ID : String) {
        if (ID.count == 9) {
            self.ID = ID
        } else {
            return nil
        }
    }
}
let person = Person(ID: "dfer53338")
if person?.ID == nil {
    print("ID must be 9 charactores")
} else {
    print("the ID IS \(person?.ID ?? "Nil")")
}
//The example below defines a structure called Animal, with a constant String property called species. The Animal structure also defines a failable initializer with a single parameter called species. This initializer checks if the species value passed to the initializer is an empty string. If an empty string is found, an initialization failure is triggered. Otherwise, the species property’s value is set, and initialization succeeds:

struct Animal {
	let species: String
	init?(species: String) {        // failable initializer
        if species.isEmpty {
            return nil
        } else {
            self.species = species
        }
	}
}
//You can use this failable initializer to try to initialize a new Animal instance and to check if initialization succeeded:
let someCreature = Animal(species: "Giraffe")
print(someCreature?.species)
// someCreature is of type Animal?, not Animal

if let giraffe = someCreature {
	print("An animal was initialized with a species of \(giraffe.species)")
}
//If you pass an empty string value to the failable initializer’s species parameter, the initializer triggers an initialization failure:

let anonymousCreature = Animal(species: "")

// anonymousCreature is of type Animal?, not Animal
if anonymousCreature == nil {
	print("The anonymous creature couldn't be initialized")
}
//====================
 
class Vehicle {
//     init(numberOfWheels: Int = 0) {
//        self.numberOfWheels = numberOfWheels
//    }
    var numberOfWheels = 0
    var description: String {
         "\(numberOfWheels) wheel(s)"
    }
}
let vehicle = Vehicle()
print("Vehicle has: \(vehicle.description)")
// Vehicle: 0 wheel(s)
class Bicycle: Vehicle {
    
    override init() {
        super.init()
        numberOfWheels = 2
    }
}
let bicycle = Bicycle()
print("Bicycle has: \(bicycle.description)")
// Bicycle: 2 wheel(s)
 
class Hoverboard: Vehicle {
    var color: String
    init(color: String) {
        self.color = color
         //super.init() //implicitly called here
    }
    override var description: String {
        return "\(super.description) in a beautiful \(color)"
    }
}
let hoverboard = Hoverboard(color: "silver")
print("Hoverboard: \(hoverboard.description)")
// Hoverboard: 0 wheel(s) in a beautiful silver
 //==============
 
//Failable Initializers for Enumerations
//You can use a failable initializer to select an appropriate enumeration case based on one or more parameters. The initializer can then fail if the provided parameters don’t match an appropriate enumeration case.

enum TemperatureUnit {
	case kelvin, celsius, fahrenheit
	init?(symbol: Character) {
		switch symbol {
			case "K":
				self = .kelvin
			case "C":
				self = .celsius
			case "F":
				self = .fahrenheit
			default:
				return nil
		}
	}
}
//You can use this failable initializer to choose an appropriate enumeration case for the three possible states and to cause initialization to fail if the parameter doesn’t match one of these states:
let fahrenheit = TemperatureUnit(symbol: "F")
if fahrenheit != nil {
	print("This is a defined temperature unit, so initialization succeeded.")
}
// Prints "This is a defined temperature unit, so initialization succeeded."

let unknown = TemperatureUnit(symbol: "X")
if unknown == nil {
	print("This isn't a defined temperature unit, so initialization failed.")
}
// Prints "This isn't a defined temperature unit, so initialization failed."

//Failable Initializers for Enumerations with Raw Values
//Enumerations with raw values automatically receive a failable initializer, init?(rawValue:), that takes a parameter called rawValue of the appropriate raw-value type and selects a matching enumeration case if one is found, or triggers an initialization failure if no matching value exists.

enum Temperature: Character {
	case kelvin = "K", celsius = "C", fahrenheit = "F"
}

let fahrenheitUnit = Temperature(rawValue: "F")
if fahrenheitUnit != nil {
	print("This is a defined temperature unit, so initialization succeeded.")
}
// Prints "This is a defined temperature unit, so initialization succeeded."

let unknownUnit = Temperature(rawValue: "X")
if unknownUnit == nil {
	print("This isn't a defined temperature unit, so initialization failed.")
}



//Propagation of Initialization Failure
//A failable initializer of a class, structure, or enumeration can delegate across to another failable initializer from the same class, structure, or enumeration. Similarly, a subclass failable initializer can delegate up to a superclass failable initializer.
//
//In either case, if you delegate to another initializer that causes initialization to fail, the entire initialization process fails immediately, and no further initialization code is executed.

class Product {
	var name: String
	init?(name: String) {
		if name.isEmpty { return nil }
		self.name = name
	}
}
class CartItem: Product {
	let quantity: Int
	init?(name: String, quantity: Int) {
		if quantity < 1 {
            return nil
        } else {
		self.quantity = quantity
		super.init(name: name)
        }
	}
}
//The failable initializer for CartItem starts by validating that it has received a quantity value of 1 or more. If the quantity is invalid, the entire initialization process fails immediately and no further initialization code is executed. Likewise, the failable initializer for Product checks the name value, and the initializer process fails immediately if name is the empty string.
//
//If you create a CartItem instance with a nonempty name and a quantity of 1 or more, initialization succeeds:

if let twoSocks = CartItem(name: "sock", quantity: 2) {
	print("Item: \(twoSocks.name), quantity: \(twoSocks.quantity)")
} else {
    print("Unable to initialize procuct name")  // Similarly, i have leave name epmty
}

//If you try to create a CartItem instance with a quantity value of 0, the CartItem initializer causes initialization to fail:

if let zeroShirts = CartItem(name: "shirt", quantity: 0) {
	print("Item: \(zeroShirts.name), quantity: \(zeroShirts.quantity)")
} else {
	print("Unable to initialize zero shirts")  // Similarly, i have leave name epmty
}



//Overriding a Failable Initializer
//You can override a superclass failable initializer in a subclass, just like any other initializer. Alternatively, you can override a superclass failable initializer with a subclass nonfailable initializer. This enables you to define a subclass for which initialization can’t fail, even though initialization of the superclass is allowed to fail.

class Document {
	var name: String?
	// this initializer creates a document with a nil name value
	init() {}
	// this initializer creates a document with a nonempty name value
	init? (name: String) {
		if name.isEmpty { return nil }
		self.name = name
	}
} //You can override a failable initializer with a nonfailable initializer but not the other way around
class AutomaticallyNamedDocument: Document {
	override init() {
		super.init()
		self.name = "[Untitled]"
	}
	override init(name: String) {
		super.init()
		if name.isEmpty {
			self.name = "[Untitled]"
		} else {
			self.name = name
		}
	}
}
//if there extra class we can override like that
//class UntitledDocument: Document {
//	override init() {
//		super.init(name: "[Untitled]")!
//	}
//}
 let zeroShirts = AutomaticallyNamedDocument(name: "")
print("Item: \(zeroShirts.name!)")

//Required Initializers
//Write the required modifier before the definition of a class initializer to indicate that every subclass of the class must implement that initializer:
//
class SomeClass {
	required init() {
		print("hello 1")
	}
}
//You must also write the required modifier before every subclass implementation of a required initializer, to indicate that the initializer requirement applies to further subclasses in the chain. You don’t write the override modifier when overriding a required designated initializer:

class SomeSubclass : SomeClass {
	required init() {
        print("hello 2")
	}
}
let tested = SomeSubclass()
print("required init is \(tested)")
//You don’t have to provide an explicit implementation of a required initializer if you can satisfy the requirement with an inherited initializer.

*/
print("===============Deinitialization==================")
/*
//Deinitialization
// struct do not have Deinitializer
//we never call Deinitializer directly
//Deinitializer runs when the last copy of a class instance is destroyed

//A deinitializer is called immediately before a class instance is deallocated. You write deinitializers with the deinit keyword, similar to how initializers are written with the init keyword. Deinitializers are only available on class types.

//Class definitions can have at most one deinitializer per class. The deinitializer doesn’t take any parameters and is written without parentheses:
//
//deinit {
//	// perform the deinitialization
//}
//====

     var fridgeIsOpen = false
     let fridgeContent = ["milk", "eggs", "leftovers"]

     func fridgeContains(_ food: String) -> Bool {
     fridgeIsOpen = true
     defer {
     fridgeIsOpen = false
     }
     let result = fridgeContent.contains(food)
         
     return result
  }
 fridgeContains("eggs")
 print(fridgeIsOpen)
 
//======
class User {
    let ID: Int
    init (ID: Int) {
        self.ID = ID
        print("suer \(ID) I am a live")
    }
    deinit
    {
        print("suer \(ID) I am dead!")
    }
}
var users: [User] = []
//var users = [User]()   // using arary // can be deleted
for i in 1...3 {
    let user = User(ID: i)
    print("User \(user.ID) in control ")
    users.append(user)
}
print("loop is finished ")
users.removeAll()
print("now array is clear ")

       //=====
    
class Bank {
	static var amountInAccount = 10_000
	class func distribute(coins amountRequested: Int) -> Int {
		let numberOfCoinsToVend = min(amountRequested, amountInAccount)
        amountInAccount -= numberOfCoinsToVend
		return numberOfCoinsToVend
	}
	class func receive(coins: Int) {
        amountInAccount += coins
	}
}
class Player {
	var coinsInPurse: Int
	init(coins: Int) {
		coinsInPurse = Bank.distribute(coins: coins)
	}
	func win(coins: Int) {
		coinsInPurse += Bank.distribute(coins: coins)
	}
	deinit {
		Bank.receive(coins: coinsInPurse)
	}
}
var playerOne: Player? = Player(coins: 100)
print("A new player has joined the game with \(playerOne!.coinsInPurse) coins")
// Prints "A new player has joined the game with 100 coins"
print("There are now \(Bank.amountInAccount) coins left in the bank")  // this is type method

playerOne!.win(coins: 2000)
print("PlayerOne won 2000 coins & now has \(playerOne!.coinsInPurse) coins")
// Prints "PlayerOne won 2000 coins & now has 2100 coins"
print("The bank now only has \(Bank.amountInAccount) coins left")
// Prints "The bank now only has 7900 coins left"

playerOne = nil// player is dead // empty
print("PlayerOne has left the game")
// Prints "PlayerOne has left the game"
print("The bank now has \(Bank.amountInAccount) coins")
// Prints "The bank now has 10000 coins"

 */
print("=============Subscript Syntax==============")
/*
//Classes, structures, and enumerations can define subscripts, which are shortcuts for accessing the member elements of a collection, list, or sequence. You use subscripts to set and retrieve values by index without needing separate methods for setting and retrieval
//extend any object with this functionality.

//Subscripts enable you to query instances of a type by writing one or more values in square brackets after the instance name. Their syntax is similar to both instance method syntax and computed property syntax. You write subscript definitions with the subscript keyword, and specify one or more input parameters and a return type, in the same way as instance methods. Unlike instance methods, subscripts can be read-write or read-only. This behavior is communicated by a getter and setter in the same way as for computed properties.

//Subscripts takes single to multiple input parameters and these input parameters also belong to any datatype. They can also use variable and variadic parameters. Subscripts cannot provide default parameter values or use any in-out parameters.

//subscript(index: Int) -> Int {
//	get {
//		// Return an appropriate subscript value here.
//	}
//	set(newValue) {
//		// Perform a suitable setting action here.
//	}
//}

//As with read-only computed properties, you can simplify the declaration of a read-only subscript by removing the get keyword and its braces:

//subscript(index: Int) -> Int {
//	// Return an appropriate subscript value here.
//}

//Here’s an example of a read-only subscript implementation, which defines a TimesTable structure to represent an n-times-table of integers:

struct TimesTables {
    
	let multiplier: Int
	subscript (index: Int) -> Int {
        get {                          // read only subscript
		return multiplier * index
        }
	}
}
let threeTimesTables = TimesTables (multiplier: 3)
print("six times three is \(threeTimesTables [3])")
// Prints "six times three is 9"

    struct College {
        var branches = ["CSE", "ECE", "IT"]
        
    subscript(index: Int) -> String {
        get {
              return branches[index]
        }
       set {
            branches[index] = newValue
      }
   }
}
var clg = College()
print(" first item is \(clg[0])")
    clg[0] = "Civil"
    clg[1] = "Mech"
    print(clg[0])
    print(clg[1])
//===

    var students = ["CSE": 80, "ECE": 65, "IT": 44]
    print(students)
    students["IT"] = 67
    students["EEE"] = 35
    print(students)

//Subscript Options
//Subscripts can take any number of input parameters, and these input parameters can be of any type. Subscripts can also return a value of any type.

//Type Subscripts
//Instance subscripts, as described above, are subscripts that you call on an instance of a particular type. You can also define subscripts that are called on the type itself. This kind of subscript is called a type subscript. You indicate a type subscript by writing the static keyword before the subscript keyword. Classes can use the class keyword instead, to allow subclasses to override the superclass’s implementation of that subscript. The example below shows how you define and call a type subscript

enum Planet: Int {
	case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
	 subscript(n: Int) -> Planet {
		return Planet(rawValue: n)!
	}
}

let mars = Planet(rawValue: 8) // or Planet[8]
print(mars!)

let array = [1,2,3,4]
print(array[1])
//==
let dic = ["word": 1,"thing": 2]
print(dic["word"]!)
print(dic["apple"])  // does not axist so will return nil

//subscrip read only getter
struct Grid {
	let grid =  [
		[1,2,3,4,5],
		[5,6,7,8],
		[9,10,11,12],
		[13,14,15,16]
	]
    
	subscript (row: Int , col: Int)-> Int? {
        get {

          let maxRow = grid.count
          guard row < maxRow , row >= 0 else {
            return nil
        }
        
		   let maxCol = grid.count
		   guard col < maxCol , col >= 0 else {
			return nil
		 }
            return grid[row][col]
        }
	}
}
let myGrid = Grid()
print("Grid value 1 :\(myGrid[0,0] ?? -1)")
print("Grid value 2:\(myGrid[0,1] ?? -1)")
print("Grid value 3:\(myGrid[0,2] ?? -1)")
print("Grid value 5:\(myGrid[1,0] ?? -1)")
print("Grid value :\(myGrid[3,3] ?? -1)")
print("Grid value :\(myGrid[5,1] ?? -1)")  // col or row are no more than what the materix has

//or

struct Gridss {
	let grid = [
		[1,2,3,4],
		[5,6,7,8],
		[9,10,11,12],
		[13,14,15,16]
	]
    
	subscript (row: Int , col: Int)-> Int? {
		get {
            let maxRow = grid.count
            guard row < maxRow , row >= 0  else {
                return nil
            }
            
			let maxCol = grid[row]
            guard col < maxCol.count , col >= 0 else {
				return nil
			}
			
			let number = grid [row][col]
			return number
		}
	}
}
let myGridss = Gridss()
print("Grid value now:\(myGridss[1,1] ?? -1)")
print("Grid value now:\(myGridss[2,1] ?? -1)")  // col or row are no more than what the materix has
//==
 
struct Matrix {

	let rows: Int, columns: Int
	var grid: [Double]
    
	init(rows: Int, columns: Int) {
		self.rows = rows
		self.columns = columns
		grid = Array(repeating: 1.0, count: rows * columns)
	}
//	func indexIsValid(row: Int, column: Int) -> Bool {
//		return row >= 0 && row < rows && column >= 0 && column < columns
//	}
	subscript(row: Int, column: Int) -> Double {
		get {
			//assert(indexIsValid(row: row, column: column), "Index out of range")
            
            if (row >= 0 && row < rows && column >= 0 && column < columns) {

            } else {
                assertionFailure("row or col more than rows or clos")
            }
            return grid[(row * columns) + column]
		}
		set {
			//assert(indexIsValid(row: row, column: column), "Index out of range")
            if (row >= 0 && row < rows && column >= 0 && column < columns) {

            } else {
                assertionFailure("row or col more than rows or clos")
            }
			grid[(row * columns) + column] = newValue
		}
	}
}
var matrix = Matrix(rows: 2, columns: 3)
print(matrix.grid)
print(matrix)
matrix[0, 1] = 1.5  //0*3=0+1= 1 index 1
matrix[1, 0] = 3.2 // 1*3=3+0= 3 index 3
matrix[1, 2] = 9.2 // 1*3=3+2= 5 index 5
matrix[1, 1] = 7.2 // 1*3=3+1= 4 index 4
print(matrix)
print(matrix.grid)


//subscrip read and write
class classroom {
	var studnet = [
		["hossam","Isa","Ali"],
		["sa","Is","Al"],
		["h","I","A"]
	]
	subscript (row: Int , col:Int) -> String {
		get {
			return studnet[row][col]
		}
		set {
			studnet[row][col] = newValue
		}
	}
}
var calss = classroom()
print (calss [1,1])
calss [1,1] = "dad"     // we cam adjust my matrix by setter
print (calss[1,1])

 */
print("=============Substrings==============")
/*
//When you get a substring from a string—for example, using a subscript or a method like prefix(_:)—the result is an instance of Substring, not another string. Substrings in Swift have most of the same methods as strings, which means you can work with substrings the same way you work with strings. However, unlike strings, you use substrings for only a short amount of time while performing actions on a string. When you’re ready to store the result for a longer time, you convert the substring to an instance of String. For example:

let greeting = "Hello, world!"
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let Substrings = greeting[..<index]
print("Substrings is \(Substrings)")
// Substrings is "Hello"

// Convert the result to a String for long-term storage.
let newString = String(Substrings)
print(newString)
*/
