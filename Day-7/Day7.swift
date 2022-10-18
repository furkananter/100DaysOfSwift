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

// okulla alakalı konuyla alakası yok. okulda öylesine yazdığım bir kod
// func RassalSayi(number: Int) -> Array<Int> {
//     var array = [Int]()
//     for _ in 1...number{
//         array.append(Int.random(in: 1000...6000))
//     }
//     return array
// }

// let result = RassalSayi(number: 10)
// print(result)

// Pisagor
// func pythogorias(number1: Double, number2: Double) -> Double  {
//     let input = number1 * number1 + number2 * number2
//     let root = sqrt(input)
//     return root
// }
// let c = pythogorias(number1: 5, number2: 10)
// print(c)

// Pisagor Kısa:
// func pythogorias(number1: Double, number2: Double) -> Double  {
//    sqrt(number1 * number1 + number2 * number2)
// }
// let c = pythogorias(number1: 7, number2: 10)
// print(c)

// MULTİPLE VALUES FROM FUNCTİONS

// func isUpperCase(string: String) -> Bool {
//     string == string.uppercased()
// }

// let c = isUpperCase(string: "HELLO")
// print(c)

// Taklmaca
// func getUser() -> [String: String] {
//     ["name": "John", "surname": "Doe"]
// }
// let user = getUser()
// print("Name :\(user["name", default:"Anonymous"]) Surname: \(user["surname", default: "Anonymous"])")