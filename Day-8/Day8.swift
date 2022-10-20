import Cocoa
// func printTimesTable(for number: Int, end: Int = 12) {
//     for i in 1...end{
//         print("\(i) x \(number) is \(i * number)")
//     }
// }
// printTimesTable(for: 4, end: 20)



// Ekstra

var Characters = ["1","2","3","4"]
print(Characters.count)
Characters.removeAll(keepingCapacity: true)
print(Characters.count)

// ERRORS: 

enum PasswordErrors: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password.count < 5 {
        throw PasswordErrors.short
    }
    if password == "12345" {
        throw PasswordErrors.obvious
    }
    if  password.count < 8{
        print("Ok")
    }else if password.count < 10{
        print("Good")
    }else {
        return "Excellent"
    }

}

