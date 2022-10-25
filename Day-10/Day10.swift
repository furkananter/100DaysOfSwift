// YEEBUDY! 10.Gün

//Struct Oluşturacağız.
struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) by \(artist) was released in \(year)")
    }
}

let red: Album = Album(title: "Red", artist: "Furkans", year: 2020)

red.printSummary()

struct Employee {
    let name: String
    var VacationRemaining: Int

    mutating func TakeVacation(days: Int){
        if VacationRemaining > days {
            VacationRemaining -= days
            print("Enjoy your vacation!")
        }else{
            print("Oppss! You don't have enough vacation days.")
        } 
    }
}

var furkan = Employee(name: "Furkan", VacationRemaining: 10)


var archer = Employee(name: "Archer", VacationRemaining: 12)
archer.TakeVacation(days: 5)
print(archer.VacationRemaining)

/*
    * Variables and constants that belong to structs are called properties.
    * Functions that belong to structs are called methods.
*/

var archer1: Employee = Employee(name: "ARcher", VacationRemaining: 14)
var archer2: Employee = Employee.init(name: "Archer2", VacationRemaining: 112)



struct TatilGunleri {
    let otelAdi: String
    var kalanTatilGunleri: Int
}

var turist = TatilGunleri(otelAdi: "Hilton", kalanTatilGunleri: 10 )
turist.kalanTatilGunleri -= 2
print(turist.kalanTatilGunleri)
turist.kalanTatilGunleri -= 3
print(turist.kalanTatilGunleri)

// Baaska bir örnek

struct kissadanHisse{
    let name: String
    var tatilGunleri = 20
    var yapilanTatilGunleri = 0

    var mesaiSaatleri: Int {
        tatilGunleri - yapilanTatilGunleri
    }
}

var tatilciyiz = kissadanHisse(name: "Oylesine", tatilGunleri: 20)
tatilciyiz.yapilanTatilGunleri += 4
print(tatilciyiz.mesaiSaatleri)
tatilciyiz.yapilanTatilGunleri += 4
print(tatilciyiz.mesaiSaatleri)


// Properties 

struct kissadanHisse2 {
    let name2: String
    var tatilGunleri2: Int
    var mesaiSaatleri2: Int {
        get {
           tatilGunleri2 - yapilanTatilGunleri2
        }
        set {
            tatilGunleri2 = yapilanTatilGunleri2 + newValue
        }
    }
}

var tatilciyiz2 = kissadanHisse2(name: "otelss",tatilGunleri2: 14)
print(tatilyiciz2.mesaiSaatleri2 += 4)
print(tatilciyiz2.yapilanTatilGunleri2)

// Properties 

struct Game {
    var score = 0 {
        didSet {
            print("Score: \(score)")
        }
    }
}

var Futbolcu = Game()
Futbolcu.score += 10
Futbolcu.score += 12
Futbolcu.score -= 2


struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adriyan E")
app.contacts.append("Adriyan F")
app.contacts.append("Adriyan G")
app.contacts.append("Adriyan H")

// INITIALIZERS

struct Player1 {
    let name1: String
    let number1: Int
}

var player1 = Player1(name1: "Furkan", number1: 10)

print(player1.name1)

// Initli versiyonu

struct Player2 {
    let name2: String
    let number2: Int
    init(name2: String /*, number: Int */) {
        self.name2 = name2
        //self.number = number
        number2 = Int.random(in: 1...100)
    }
}

var player2 = Player2(name2: "Furkan" /*number2: 10*/)

print(player2.name)


