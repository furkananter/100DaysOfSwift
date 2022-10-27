import Cocoa

// Çözüm 1: EASY
// struct Car1 {
//     let model1: String
//     let seats1 : Int
//     private(set) static var currentGear1 = 1
    
    
//     mutating func changeGear(newGear: Int) {
//         if newGear > 0 && newGear < 10 {
//             Car.currentGear = newGear
//             break
//         }else {
//             print("Invalid gear!")
//             break
//         }
//     } 

// }

// var car = Car(model: "Tesla", seats: 4) 
// car.changeGear(newGear: 0)
// print(Car.currentGear)


//Çözüm 2: HARD

enum Gear: Int, CaseIterable {
    case reverse = 0
    case parking = 1
    case first = 2
    case second = 3
    case third = 4
    case fourth = 5
    case fivth = 6
    case sixth = 7
}

struct Car {
    let model: String
    let seats: Int
    private(set) var currentGear: Gear = Gear.parking

    func toString() -> String {
        "This model \"\(model)\" has \(seats) seats and is currently in \(currentGear) gear!"
    }

    mutating func gearUp() {
        if currentGear.rawValue < Gear.sixth.rawValue {
            currentGear = next()
        }
    }

    mutating func gearDown() {
        if currentGear.rawValue > Gear.reverse.rawValue {
            currentGear = previous()
        }
    }

    private func previous() -> Gear {
        let all = Gear.allCases
        let idx = all.firstIndex(of: currentGear)!
        let previous = all.index(before: idx)
        return Gear(rawValue: previous) ?? currentGear
    }

    private func next() -> Gear {
        let all = Gear.allCases
        let idx = all.firstIndex(of: currentGear)!
        let next = all.index(after: idx)
        return Gear(rawValue: next) ?? currentGear
    }
}

var bmw = Car(model: "BMW 318i", seats: 4)
print(bmw.toString())
bmw.gearUp()
bmw.gearUp()
bmw.gearDown()
print(bmw.toString())