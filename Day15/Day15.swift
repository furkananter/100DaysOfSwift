import Cocoa
// Learn Swift Essentials in One Hour: 



// -----------------1---------------------
// ππ» Creating Constants and Variables ππ»
var name = "Furkan" 
name = "Deniz"
print(name)
print("--------------------")
let user = "Γmers"
print(user)
// ππ» Creating Constants and Variables ππ»






// -----------------2---------------------
// ππ» Strings ππ»
print("--------------------")
let actor = "Tom Cruise"
let quote = "He tapped a sign saying \"Believe\" and walked away."

let movie = """

A day in
the life of an
Apple engineer

"""

print(actor.count)
print(quote.hasPrefix("He"))
print(quote.hasSuffix("away."))
// ππ» Strings ππ»






// -----------------3---------------------
// ππ» Integers ππ»
print("--------------------")
let score = 10
let highScore = score + 10
let halvedScore = score / 2

var counter = 10
counter += 5

let number = 120
print(number.isMultiple(of: 3))
let id = Int.random(in: 1...20_000)
// ππ» Integers ππ»







// -----------------4---------------------
// ππ» Decimals ππ»
print("--------------------")
let decimals = 3.0
// ππ» Decimals ππ»







// -----------------5---------------------
// ππ» Booleans ππ»
print("--------------------")
let goodDogs = true 
let gameOver = false

var isSaved = false
isSaved.toggle()
print(isSaved)
// ππ» Booleans ππ»






// -----------------6---------------------
// ππ» Joining Strings ππ»
print("--------------------")
let jStrings = "Taylor Swift"
let jSAge = 26
let jSMessage = "I'm \(jStrings) and I'm \(jSAge) years old."
print(jSMessage)

// ππ» Joining Strings ππ»







// ------------------7-------------------
// ππ» Arrays ππ»
print("--------------------")
var arrayColors = ["Red", "Blue", "Green"]
let arrayNumbers = [4,5,6,7,8]
var arrayReadings = [0.5,0.6,0.7]

print(arrayColors[0])

print(arrayNumbers[1])

arrayColors.append("Purple")

arrayColors.remove(at: 1)
print(arrayColors.count)
print(arrayColors.contains("Octarine"))

// ππ» Arrays ππ»






// ------------------8--------------------
// ππ» Dictionaries ππ»
print("--------------------")

let dicEmployee = [
    "name" : "ΓakΔ±l",
    "job" : "iOS Developer",
]
print(dicEmployee["name", default: "Unknown"], dicEmployee["job", default: "Unknown"])

// ππ» Dictionaries ππ»





// ------------------9-------------------
// ππ» Sets ππ»
print("--------------------")
var setNumbers = Set([1,2,3,4,5,5])
print(setNumbers)

setNumbers.insert(6)
print(setNumbers)
// ππ» Sets ππ»






// ------------------10--------------------
// ππ» Enums ππ»
print("--------------------")
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}
var day = Weekday.monday
day = .tuesday
print(day)
// ππ» Enums ππ»




// ------------------11-------------------
// ππ» Type Annotations ππ»
print("--------------------")
var typeScore: Double = 3.0
print(type(of: typeScore))

let typePlayer: String = "Roy"
var luckyNumber: Int = 7
let pi : Double = 3.14
var isEnabled: Bool = true
var typeAlbums: Array<String> = ["Red", "1989", "Reputation"]
var typeUser: Dictionary<String,String> = ["name" : "Furkan", "job" : "iOS Developer"]
var typeBooks: Set<String> = Set(["1984", "Animal Farm", "Brave New World"])

/* EASY VERSION: */

var typeArray:[String] = ["oylesine bi sevda", "galiba"]

var typeUser2 : [String: String] = ["name": "AdΔ± belli de", "soyadi": "SoyadΔ± soyadΔ±m olacaktΔ±"]

var typeTeams: [String] = [String]()
var typeClues = [String]()


enum UIStyle {
    case light, system, dark
}

var style: UIStyle = .light

// ππ» Type Annotations ππ»





// ------------------12--------------------
// ππ» Conditions ππ»
print("--------------------")
let age = 16

if age < 12 {
    print("You can't vote")
} else if age < 18 {
    print("You can vote soon.")
} else {
    print("You can vote now.")
}

let temp = 26

if temp > 20 && temp < 30 {
    print("It's a nice day.")
}
// ππ» Conditions ππ»





// ------------------13-------------------
// ππ» Switch Statements ππ»
print("--------------------")
enum Weather {
    case sun, rain, wind
}

let forecast = Weather.sun

switch forecast {
    case .sun: 
        print("It's sunny")
    case .rain:
        print("It's rainy")
    case .wind:
        print("It's windy")
    // default:
    //     print("It's something else")
}


// ππ» Switch Statements ππ»





// ------------------14-------------------
// ππ» The Ternary Condition Operator ππ»
print("--------------------")
let ternaryAge = 18
print(ternaryAge >= 18 ? "You can vote" : "You can't vote")

// ππ» The Ternary Condition Operator ππ»
// ------------------15-------------------
// ππ» Loops ππ»
print("--------------------")
let Platforms = ["iOS", "Android", "Windows", "MacOS", "Linux"]
for os in Platforms {
    print("Swift works on \(os)")
}

 for i in 1...5{
    print(i)
 }

for i in 1..<13 {
    print("5 x \(i) is \(5 * i)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

var count = 10

while count > 0 {
    print("\(count)β¦")
    count -= 1
}

print("Go!")

let files = ["sophie.jpg", "word.txt", "book.jpg"]
for file in files {
    if file.hasSuffix(".jpg") == false {
        continue
    }
     print("Found a JPEG: \(file)")
}

// ππ» Loops ππ»






// ------------------16-------------------
// ππ» Functions ππ»
print("--------------------")
func printTimeTables(number: Int){
    for i in 1...12 {
        print("\(number) x \(i) is \(number * i)")
    }
}

printTimeTables(number: 5)

func rollDice() -> Int {
    return Int.random(in: 5...10)
}
let result = rollDice()
print(result)

// ππ» Functions ππ»






// ------------------17-------------------
// ππ» Returning Multiple Values from functions ππ»
print("--------------------")

func getUser() -> (firstName: String, lastName: String) {
    return (firstName: "Deniz", lastName: "Anter")
}
let funcUser = getUser()
print(funcUser.firstName, funcUser.lastName)

let (firstName, _) = getUser()
print(firstName)

// ππ» Returning Multiple Values from functions ππ»





// ------------------18-------------------
// ππ» Customizing Parameter Labels ππ»

print("--------------------")
func isupperCase(_ string: String) -> Bool {
    string == string.uppercased()
}
let string = "HELLO WORLD"
let funcResult =  isupperCase(string)
print(funcResult)

func cusPrintTimesTable(for number: Int) {
    for i in 1...12 {
        print("\(number) x \(i) is \(number * i)")
    }
}
cusPrintTimesTable(for: 5)

// ππ» Customizing Parameter Labels ππ»






// ------------------19-------------------

// ππ» Providing Default Values for Parameters ππ»

print("--------------------")
func greet(_ person: String, formal: Bool = false) {
    if formal {
        print("Hello, \(person)!")
    } else {
        print("Hey, \(person)!")
    }
}
greet("Deniz", formal: true)


// ππ» Providing Default Values for Parameters ππ»

// ------------------20-------------------

// ππ» Handling Errors in Functions ππ»

print("--------------------")
enum PasswordError: Error {
    case obvious, short
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 10 {
        return "OK"
    } else {
        return "Good"
    }
}

let passString = "12345"
do {
    let result = try checkPassword(passString)
    print(result)
} catch PasswordError.obvious {
    print("You can't use that password.")
} catch{
    print("Something went wrong.")
}


// ππ» Handling Errors in Functions ππ»

// ------------------21-------------------

// ππ» Closures ππ»

print("--------------------")

let sayHello = {
    print("Hello")
}
sayHello()

let sayHello2 = { (name: String) in 
    print("Hello \(name)")
}

sayHello2("Deniz")


// ππ» Closures ππ»




// ------------------22-------------------
// ππ» Trailing closures and shorthand syntax ππ»

print("--------------------")

let team = ["Gloria", "Suzanne", "Tiffany", "Tasha"]
let onlyT = team.filter({/*(name: String) -> Bool */ name in
    //return name.hasPrefix("T")
    name.hasPrefix("T")
})

/*let onlyT = team.filter { name in
    name.hasPrefix("T")
}
*/
print(onlyT)

/*
 let onlyT = team.filter { 
    $0.hasPrefix("T")
 }
*/

// ππ» Trailing closures and shorthand syntax ππ»






// ------------------23-------------------
// ππ» Structs ππ»
print("--------------------")
struct Album {
    let title: String
    let artist: String
    var releasedYear = true
    mutating func releasing() {
        releasedYear = false
    }
    func printSummary() {
        print("\(title) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", releasedYear: true)
print(red.title)
red.printSummary()
// ππ» Structs ππ»





// ------------------24-------------------
// ππ» Computed Properties ππ»
print("--------------------")
struct Employee {
    let name: String
    var vacationAllocated: Int
    var vacationUsed: Int

    // var vacationLeft: Int {
    //     vacationAllocated - vacationUsed
    // }
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationUsed
        }
        set {
            vacationUsed = vacationAllocated - newValue
        }
    }
}


// ππ» Computed Properties ππ»





// ------------------25-------------------
// ππ» Property Observers ππ»
print("--------------------")
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var propertyGame = Game()
propertyGame.score += 10
propertyGame.score -= 3



// ππ» Property Observers ππ»






// ------------------26-------------------
// ππ» Custom Initializers ππ»
print("--------------------")

struct Player {
    let name: String
    let number: Int

    init(name: String){
        self.name = name
        number = Int.random(in: 1...99)
    }
}

// ππ» Custom Initializers ππ»






// ------------------27-------------------
// ππ» Access control ππ»
print("--------------------")


// ππ» Access control ππ»




// ------------------28-------------------
// ππ» Static properties and methods ππ»
print("--------------------")

struct AppData {
    static let version = "1.3 beta 2"
    static let settings = "Settings.json"
}
print(AppData.version)
// ππ» Static properties and methods ππ»




// ------------------29-------------------
// ππ» Classes ππ»
print("--------------------")
class CEmployee {
    let hours: Int
    init (hours: Int) {
        self.hours = hours
    }
    func printSummary() {
        print("I worked \(hours) hours this week.")
    }
}

class CDeveloper : CEmployee {
    func work(){
        print("I'm coding for \(hours) hours.")
    }
    override func printSummary() {
        print("I'm a developer and I worked \(hours) hours this week.")
    }
}

let novall = CDeveloper(hours: 40)
novall.work()
novall.printSummary()


class CVehicle {
    let isElectric: Bool

    init(isElectric: Bool){
        self.isElectric = isElectric
    }

}

class CCar: CVehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool){
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }}


class Singer {
    var name = "Taylor Swift"
}
var singer1 = Singer()
print("Singer 1: \(singer1.name)")
var singer2 = singer1
singer2.name = "Justin Bieber"
print("Singer 1: \(singer1.name)")
print("Singer 2: \(singer2.name)")


class CUser {
    let id: Int
    init(id: Int) {
        self.id = id
        print("I am alive \(id)")
    }
    deinit {
        print("I am dead \(id)")
    } 
}

// for i in 1...3 {
//     let user = CUser(id: 1)
//     print("User \(id): I'm in control! ")
// }

class CUser2{
    var name = "Paul"
}

let cuser = CUser2()
cuser.name = "Taylor Swift"
print(cuser.name)

// ππ» Classes ππ»




// ------------------30-------------------
// ππ» Protocols ππ»
print("--------------------")

// protocol PVehicleΒ {
//     func estimateTime(for distance: Int) -> Int
//     func travel(distance: Int)
// }

// struct PCar: PVehicle {
//     func estimateTime(for distance: Int) -> Int {
//         distance / 50
//     }
//     func travel(distance: Int) {
//         print("I am driving \(distance) km. ")
//     }
// }

// func commute(distance: Int, using vehicle: PVehicle) {
//     if vehicle.estimateTime(for: distance ) > 100 {
//         print("Too Slow")
//     }else {
//         vehicle.travel(distance: distance) 
//     }
// }

// let protocolCar = Car()
// commute(distance: 100, using: protocolCar)

// protocol VehicleΒ {
//     var protocolName: String { get }
//     var currentPassengers: Int { get set }
//     func estimateTime(for distance: Int) -> Int
//     func travel(distance: Int)
// } 
// let protocolName = "Car"
// var currentPassengers = 1
// ππ» Protocols ππ»




// ------------------31-------------------
// ππ» Extensions ππ»
print("--------------------")

extension String {
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

var extensionQuote = "  Hello, world!   "
let trimmedQuote = extensionQuote.trimmed()
print(trimmedQuote)

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
"""

print(lyrics.lines.count)

// extension Strings {
//     mutating func trim(){
//         self= self.trimmed()
//     }
// }
// var extensionQ = extensionQuote.trim()
// print(extensionQ)

// ππ» Extensions ππ»






// ------------------32-------------------
// ππ» Protocol extensions ππ»
print("--------------------")


extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}
let guess = ["Mario", "Luigi", "Peach"]
if guess.isNotEmpty {
    print("Guess count: \(guess.count)")
}

// ππ» Protocol extensions ππ»





// ------------------33-------------------
// ππ» Optionals ππ»
print("--------------------")

let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi",
]

// bΓΆyle kullanmaya swift izin vermiyor.
// let eachOpposite = opposites["Peach"]
// print(eachOpposite)

if let eachOpposite = opposites["Mario"]{
    print("Mario's opposite is \(eachOpposite)")
}
// ππ» Optionals ππ»




// ------------------34-------------------
// ππ» Unwrapping optionals with guard ππ»
print("--------------------")

// func printSquare(of number: Int?) {
//     guard let number == number else{
//         print("You must pass a number")
//         return
//     }
//     print("\(number) squared is \(number * number)")
// }

// ππ» Unwrapping optionals with guard ππ»




// ------------------35-------------------
// ππ» Nil coalescing ππ»
print("--------------------")

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"
print(favorite)

let input = ""
let nilInput = Int(input) ?? 0
print(nilInput)
// ππ» Nil coalescing ππ»



// ------------------36-------------------
// ππ» Optional chaining ππ»
print("--------------------")
let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased()
print("Next in line: \(chosen ?? "No one")")


// ππ» Optional chaining ππ»



// ------------------37-------------------
// ππ» Optional try? ππ»
print("--------------------")
enum UserError : Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.badID
}
if let user = try? getUser(id: 1) {
    print("User: \(user)")
}


// ππ» Optional try? ππ»
