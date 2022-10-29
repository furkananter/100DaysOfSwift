import Cocoa 

// Class Konusu:
class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }
    func printSummary() {
        print(" I work \(hours) hours a day.")
    }

}
// class Developer: Employee {
//     func work() {
//         print("I am writing code for \(hours) hours")
//     }
// }

// New Version:
class Developer: Employee {
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
let novall = Developer(hours: 5)
//novall.printSummary()
robert.printSummary()
joseph.work()

