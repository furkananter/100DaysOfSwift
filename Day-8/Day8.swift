import Cocoa
func printTimesTable(for number: Int, end: Int = 12) {
    for i in 1...end{
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTable(for: 4, end: 20)

