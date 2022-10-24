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
    var tatilGunleri2: 15

    var mesaiSaatleri2: Int {
        get {
           tatilGunleri2 - yapilanTatilGunleri
        }
        set {
            tatilGunleri2 = yapilanTatilGunleri + newValue
        }
    }
}

var tatilciyiz2 = kissadanHisse2(name: "otelss",tatilGunleri2: 14)
print(tatilyiciz2.mesaiSaatleri2 += 4
print(tatilciyiz2.yapilanTatilGunleri)