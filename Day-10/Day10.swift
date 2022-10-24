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