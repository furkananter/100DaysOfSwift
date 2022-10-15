import Foundation


// if someCondition {
//     print("if this is true send it!")
// }

//! Örnek 1.
// let score = 85
// if score > 80 {print("yes")}

//! Örnek 2.
// let ourName = "Dave Lister"
// let friendName = "Arnold Rimmer"

// if ourName < friendName {
//    print("It's \(ourName) vs \(friendName)")
// }

// if ourName > friendName {
//     print("It's \(friendName) vs \(ourName)")
// }

//! Örnek 3.

// var numbers = [1,2,3]
// numbers.append(4)

// if numbers.count > 3{numbers.remove(at:0)}

// print(numbers)

//! Örnek 4.

// let name = "Furkan"

// if name == "Furkan" {print("Furkansss")}


// let ulke = "Almanya"

// if ulke != "Turkiye" {print("sizi kıskanmıyorlar, sizin ülkeniz: \(ulke)")}

//! username check
// var username = "furkanss"

// if username == "" {
//     username = "Anonymous"
// }

// print("Your username: \(username)") 

//* Username check different version: 

// var username = ""

// if username.count == 0 {
//     username = "İsimsiz Kahraman"
// }
// print(username)

// var username = ""

// if username.isEmpty == true {
//     username = "Anony"
// }
// print(username)

// Kompleks bir örnek üzerinden if else


enum Weather {
    case sun, rainy, cloud, snow, cold
}

var forecast = Weather.sun

switch forecast {
    case .sun:
        print("it is a sunny day")
    case .rainy: 
        print("it is a rainy day")
    case .cloud:
        print("it is a cloud day")
    case .snow:
        print("it is a snowly day")
    case .cold:
        print("it is a cold day")
}


