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
class Developer: Employee {
    func work() {
        print("I am writing code for \(hours) hours")
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
novall.printSummary()
robert.work()
joseph.work()