import Cocoa
import Foundation

// Data Access - public, private, fileprivate

// struct BankAccount {
//     private(set) var funds = 0 

//     mutating func deposit(amount: Int) {
//         funds += amount
//     }
//     mutating func withdraw(amount: Int) -> Bool {
//         if funds >= amount {
//             funds -= amount
//             return true
//         }else {
//             return false
//         }
//     }
// }

// var account = BankAccount()
// account.deposit(amount: 100)
// let success = account.withdraw(amount: 50)
// if success {
//     print("Withdrew 50")
// }else {
//     print("Failed to get money")
// }

// account.fund -= 1000 // Error
// fakat account.fund -= 1000 de dışardan çalışıyor. Bunu engellemenin bir yolu lazım.

// Important: If you use private access control for one or more properties, chances are you’ll need to create your own initializer.

// STATIC PROPERTIES AND METHODS


struct School {
    static var studentCount = 0
    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

var ogrenci = School.add(student: "Taylor Swift")
print(ogrenci.studentCount)



//


struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeUrl = "https://www.hackingwithswift.com"
}


//


struct Employee {
    let username: String
    let password: String

    static let example = Employee(username: "asmodeus", password: "bilmiyorumkine")
}

