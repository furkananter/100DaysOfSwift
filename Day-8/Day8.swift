import Cocoa

func printTimesTable(for number: Int, end: Int = 12) {
    for i in 1...end{
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTable(for: 4, end: 20)



//* Ekstra

var Characters = ["1","2","3","4"]
print(Characters.count)
Characters.removeAll(keepingCapacity: true)
print(Characters.count)

//* ERRORS: 

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

//* 1. Starting a block of work that might throw errors, using "do".
//* 2. Calling one or more throwing functions, using "try".
//* 3. Handling any thrown errors using "catch".

do {
    let result = try checkPassword("12345")
    print(result)
    print("That passowrd is correct")
}
catch {
    print("Your password is not true! There was an Error.")
}

// Catch Devamı
do {
    let result = try checkPassword("12345")
    print(result)
    print("That passowrd is correct")
}
catch PasswordErrors.short{
    print("Your password is too short")
}
catch PasswordErrors.obvious{
    print("I have the same combination on my luggage")
}
catch{
    print("There was an Error.")
}

