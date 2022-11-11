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


// How to add initializers for classes:

class Vehicle {
    let Electricity : Bool

    init(Electricity: Bool ) {
        self.Electricity = Electricity
    }

    func printSummary(){
        print("I've a vehicle and I use \(Electricity) electricity.")
    }
}

let car = Vehicle(Electricity: true)
car.printSummary()

// Another 
class Car: Vehicle {
    let isConventible: Bool

    init(isConventible: Bool, Electricity: Bool) {
        self.isConventible = isConventible
        super.init(Electricity : Electricity)
    }
}

let car2 = Car(isConventible: true, Electricity: true)
let teslaX = Car(isConventible: false, Electricity: true)


// How to copy Classes:
class User {
    var username = "Deniz"
    func copy() -> User {
        let copy = User()
        copy.username = username
        return copy 
    }
}
var user2 = User()
var user1 = user2
user1.username = "Çakıl"
print(user1.username)

class Users {
    let id: Int
    init(id: Int) {
        self.id = id
        print("Userrr \(id) I 'am alivee.")
    }
    deinit {
        print("Userr \(id) I 'am dead.")
    }

}

// for i in 1...3 {
//     let user = Users(id: i)
//     print("User \(i) : I am in control.")
// }

// ...

var userce = [Users]()

for i in 1...3 {
    let users = Users(id: i)
    userce.append(Users(id: i))
    print("User \(users.id) : I am in control.")
}

print("Loop is over")
userce.removeAll()
print("Array is clear")


// How to use Variables inside of the Classes:

class Adamlar {
    var adam = "Ömer"
}

var kadın = Adamlar()
kadın.adam = "Deniz ve Çakıl"
kadın = Adamlar()
print(kadın.adam)


