import Cocoa
// Learn Swift Essentials in One Hour: 



// -----------------1---------------------
// 👇🏻 Creating Constants and Variables 👇🏻
var name = "Furkan" 
name = "Deniz"
print(name)
print("--------------------")
let user = "Ömers"
print(user)
// 👆🏻 Creating Constants and Variables 👆🏻






// -----------------2---------------------
// 👇🏻 Strings 👇🏻
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
// 👆🏻 Strings 👆🏻






// -----------------3---------------------
// 👇🏻 Integers 👇🏻
print("--------------------")
let score = 10
let highScore = score + 10
let halvedScore = score / 2

var counter = 10
counter += 5

let number = 120
print(number.isMultiple(of: 3))
let id = Int.random(in: 1...20_000)
// 👆🏻 Integers 👆🏻







// -----------------4---------------------
// 👇🏻 Decimals 👇🏻
print("--------------------")
let decimals = 3.0
// 👆🏻 Decimals 👆🏻







// -----------------5---------------------
// 👇🏻 Booleans 👇🏻
print("--------------------")
let goodDogs = true 
let gameOver = false

var isSaved = false
isSaved.toggle()
print(isSaved)
// 👆🏻 Booleans 👆🏻






// -----------------6---------------------
// 👇🏻 Joining Strings 👇🏻
print("--------------------")
let jStrings = "Taylor Swift"
let jSAge = 26
let jSMessage = "I'm \(jStrings) and I'm \(jSAge) years old."
print(jSMessage)

// 👆🏻 Joining Strings 👆🏻







// ------------------7-------------------
// 👇🏻 Arrays 👇🏻
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

// 👆🏻 Arrays 👆🏻






// ------------------8--------------------
// 👇🏻 Dictionaries 👇🏻
print("--------------------")

let dicEmployee = [
    "name" : "Çakıl",
    "job" : "iOS Developer",
]
print(dicEmployee["name", default: "Unknown"], dicEmployee["job", default: "Unknown"])

// 👆🏻 Dictionaries 👆🏻





// ------------------9-------------------
// 👇🏻 Sets 👇🏻
print("--------------------")
var setNumbers = Set([1,2,3,4,5,5])
print(setNumbers)

setNumbers.insert(6)
print(setNumbers)
// 👆🏻 Sets 👆🏻






// ------------------10--------------------
// 👇🏻 Enums 👇🏻
print("--------------------")
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}
var day = Weekday.monday
day = .tuesday
print(day)
// 👆🏻 Enums 👆🏻




// ------------------11-------------------
// 👇🏻 Type Annotations 👇🏻
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

var typeUser2 : [String: String] = ["name": "Adı belli de", "soyadi": "Soyadı soyadım olacaktı"]

var typeTeams: [String] = [String]()
var typeClues = [String]()


enum UIStyle {
    case light, system, dark
}

var style: UIStyle = .light

// 👆🏻 Type Annotations 👆🏻





// ------------------12--------------------
// 👇🏻 Conditions 👇🏻
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
// 👆🏻 Conditions 👆🏻





// ------------------13-------------------
// 👇🏻 Switch Statements 👇🏻
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
    default:
        print("It's something else")
}


// 👆🏻 Switch Statements 👆🏻





// ------------------14-------------------
// 👇🏻 The Ternary Condition Operator 👇🏻
print("--------------------")
let ternaryAge = 18
print(ternaryAge >= 18 ? "You can vote" : "You can't vote")

// 👆🏻 The Ternary Condition Operator 👆🏻
// ------------------15-------------------
// 👇🏻 Loops 👇🏻
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
    print("\(count)…")
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

// 👆🏻 Loops 👆🏻






// ------------------16-------------------
// 👇🏻 Functions 👇🏻
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

// 👆🏻 Functions 👆🏻






// ------------------17-------------------
// 👇🏻 Returning Multiple Values from functions 👇🏻
print("--------------------")

func getUser() -> (firstName: String, lastName: String) {
    return (firstName: "Deniz", lastName: "Anter")
}
let funcUser = getUser()
print(funcUser.firstName, funcUser.lastName)

let (firstName, _) = getUser()
print(firstName)

// 👆🏻 Returning Multiple Values from functions 👆🏻





// ------------------18-------------------
// 👇🏻 Customizing Parameter Labels 👇🏻

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

// 👆🏻 Customizing Parameter Labels 👆🏻






// ------------------19-------------------

// 👇🏻 Providing Default Values for Parameters 👇🏻

print("--------------------")
func greet(_ person: String, formal: Bool = false) {
    if formal {
        print("Hello, \(person)!")
    } else {
        print("Hey, \(person)!")
    }
}
greet("Deniz", formal: true)


// 👆🏻 Providing Default Values for Parameters 👆🏻

// ------------------20-------------------

// 👇🏻 Handling Errors in Functions 👇🏻

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


// 👆🏻 Handling Errors in Functions 👆🏻

// ------------------21-------------------

// 👇🏻 Closures 👇🏻

print("--------------------")

let sayHello = {
    print("Hello")
}
sayHello()

let sayHello2 = { (name: String) in 
    print("Hello \(name)")
}

sayHello2("Deniz")


// 👆🏻 Closures 👆🏻




// ------------------22-------------------
// 👇🏻 Trailing closures and shorthand syntax 👇🏻

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

// 👆🏻 Trailing closures and shorthand syntax 👆🏻






// ------------------23-------------------
// 👇🏻 Structs 👇🏻
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
// 👆🏻 Structs 👆🏻





// ------------------24-------------------
// 👇🏻 Computed Properties 👇🏻
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


// 👆🏻 Computed Properties 👆🏻





// ------------------25-------------------
// 👇🏻 Property Observers 👇🏻
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



// 👆🏻 Property Observers 👆🏻






// ------------------26-------------------
// 👇🏻 Custom Initializers 👇🏻
print("--------------------")

struct Player {
    let name: String
    let number: Int

    init(name: String){
        self.name = name
        number = Int.random(in: 1...99)
    }
}

// 👆🏻 Custom Initializers 👆🏻






// ------------------27-------------------
// 👇🏻 Access control 👇🏻
print("--------------------")


// 👆🏻 Access control 👆🏻




// ------------------28-------------------
// 👇🏻 Static properties and methods 👇🏻
print("--------------------")

struct AppData {
    static let version = "1.3 beta 2"
    static let settings = "Settings.json"
}
print(AppData.version)
// 👆🏻 Static properties and methods 👆🏻




// ------------------29-------------------
// 👇🏻 Classes 👇🏻
print("--------------------")


// 👆🏻 Classes 👆🏻






// ------------------30-------------------
// 👇🏻 Protocols 👇🏻
print("--------------------")
// 👆🏻 Protocols 👆🏻




// ------------------31-------------------
// 👇🏻 Extensions 👇🏻
print("--------------------")
// 👆🏻 Extensions 👆🏻






// ------------------32-------------------
// 👇🏻 Protocol extensions 👇🏻
print("--------------------")
// 👆🏻 Protocol extensions 👆🏻





// ------------------33-------------------
// 👇🏻 Optionals 👇🏻
print("--------------------")

// 👆🏻 Optionals 👆🏻




// ------------------34-------------------
// 👇🏻 Unwrapping optionals with guard 👇🏻
print("--------------------")

// 👆🏻 Unwrapping optionals with guard 👆🏻




// ------------------35-------------------
// 👇🏻 Nil coalescing 👇🏻
print("--------------------")

// 👆🏻 Nil coalescing 👆🏻



// ------------------36-------------------
// 👇🏻 Optional chaining 👇🏻
print("--------------------")

// 👆🏻 Optional chaining 👆🏻



// ------------------37-------------------
// 👇🏻 Optional try? 👇🏻
print("--------------------")

// 👆🏻 Optional try? 👆🏻
