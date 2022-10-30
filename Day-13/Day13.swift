import Cocoa

func commute(distance: Int, using vehicle: Car){
    // lots of code here
}

func commute(distance: Int, using vehicle: Train){
    // lots of code here
}
func commute(distance: Int, using vehicle: Bus) {
    // lots of code here
}


protocol Vehicle {
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car : Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    func travel(distance: Int) {
        print("I am driving \(distance) km.")
    }
    func openSunroof(){print("It's a nice day!")}
}