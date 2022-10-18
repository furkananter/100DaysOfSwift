import Cocoa

// func printTimesTable(number: Int){
//     for i in 1...12{
//         print("\(i) x \(number) is \(i * number)")
//     }
// }
// printTimesTable(number:4)

// func printTimesTable(number: Int, end: Int){
//     for i in 1...end{
//         print("\(i) x \(number) is \(i * number)")
//     }
// }
// printTimesTable(number:4, end: 20)

// let root = sqrt(9)
// print(root)


// func rollDice() -> Int {
//     return Int.random(in: 1...6)
// }

// let result = rollDice()
// print(result)

// Uzun versiyon
// func areLettersIdentical(string1: String, string2: String ) -> Bool {
//     let first = string1.sorted()
//     let second = string2.sorted()
//     return first == second
// }

// Kısa versiyon: 

// func areLettersIdentical(string1: String, string2: String ) -> Bool {
//     string1.sorted() == string2.sorted()
// }

// func pythagorias(a: Double , b: Double) -> Double {

// }


func RassalSayi(number: Int) -> Array<Int> {
    var array = [Int]()
    for _ in 1...number{
        array.append(Int.random(in: 1000...6000))
    }
    return array
}

let result = RassalSayi(number: 10)
print(result)
