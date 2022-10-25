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

