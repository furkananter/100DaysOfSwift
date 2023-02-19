import Cocoa

func getUser() {
    print("user")
}
getUser()

var userss = getUser
userss()

// degiskeni fonksiyona dönüstürmek

let style = {
    print("güzel özellikmiş.")
}

style()

// in kullanmak zorundayız çünkü diğer türlü bunu parametreli bir fonksiyona döndüremeyiz.


let user = { (name: String) -> String in
    "Hello \(name)"
}


// *
// var greetCopy: () -> Void = style


func getVal(for id: Int) -> String {
    if id == 1964 {
       return "Furkans"
    }else{
       return "Şevval"
    }
}

let data: (Int) -> String = getVal
let user = data(19624)
print(user)

// Sorted()
// uzun olarak böyle yapabiliriz. ama closure kullanarak daha kısa bir şekilde yapabiliriz.
let team = ["furkans", "ömers","mustafas","ayşes","alis","şevvals"]
let sortedTeam = team.sorted()
print(sortedTeam)

func getFirstOrder(name1: String, name2: String) -> Bool {
    if name1 == "şevvals" {
        return true
    }else if name2 == "şevvals" {
        return false
    }
   return name1 < name2 
}
let getFirstTeam = team.sorted(by: getFirstOrder)
print(getFirstTeam)
// daha kısa yolu da şu:

let team2 = ["furkans", "ömers","mustafas","ayşes","alis","şevvals"]
let sortedTeam = team2.sorted(by:{(name1: String, name2: String) -> Bool in 
    if name1 == "şevvals"{
        return true
    }else if name2 == "şevvals"{
        return false
    }
    return name1 < name2
})
print(sortedTeam)

// bu da farklı bir gösterimi

let sortedTeamChanged = team2.sorted(by: {(name1, name2) in 
    if name1 == "şevvals"{
        return true
    }else if name2 == "şevvals"{
        return false
    }
    return name1 < name2
})

print(sortedTeamChanged)

// bu da farklı bir gösterimi

let team2 = ["furkans", "ömers","mustafas","ayşes","alis","şevvals"]
let sortedTeamChanged2 = team2.sorted{
    if $0 == "şevvals"{
        return true
    }else if $1 == "şevvals"{
        return false
    }
    return $0 < $1
}

print(sortedTeamChanged2)

//* eğer normal bir sorting işlemi gerçekleştirmek istiyorsak bunun için
let sortedDifferent = team2.sorted {
    return $0 > $1
} 
// daha kısa versiyonu : 
let sortedDifferent = team2.sorted { $0 > $1 }

//! Filter Methodu (klasik filter işte, code review yap hiç anlatamam şimdi)

let filterlaBakalim = team2.filter{
    $0.hasPrefix("ş")
}
print(filterlaBakalim)

//! .map methodu (klasik map işte, code review yap hiç anlatamam şimdi)
let maplaBakalim = team2.map{
    $0.uppercased()
}
print(maplaBakalim)

/*

When you create a list of data on the screen, 
SwiftUI will ask you to provide a function that accepts one item from the list and converts it something it can display on-screen.

When you create a button, SwiftUI will ask you to provide one function to execute when the button is pressed, 
and another to generate the contents of the button – a picture, or some text, and so on.

Even just putting stacking pieces of text vertically is done using a closure.

*/

func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy: () -> Void = greetUser
greetCopy()

// Fonksiyon kullanarak karmaşık sayı üreten bir Array oluşturmak
func makeArrays(size: Int, using generator: () -> Int) -> [Int] {
    var Array = [Int]()
    for _ in 0..<size {
        let NewNumber = generator()
        Array.append(NewNumber)
    }
    return Array
}

makeArrays(size: 5, using: {
    Int.random(in: 1...10)
})


let rolls = makeArrays(size: 50) {
    Int.random(in: 1...20)
}
// print(rolls)


func generateNumber() -> Int {
    Int.random(in: 1...10)
}

let numbers = makeArrays(size: 5, using: generateNumber)
print(numbers)


func doImportantWork(first: () -> Void , second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
}

doImportantWork{
    print("First work done")
} second: {
    print("Second work done")
} third: {
    print("Third work done")
}

/*
*1. You can copy functions in Swift, and they work the same as the original except they lose their external parameter names.

2. All functions have types, just like other data types. 
This includes the parameters they receive along with their return type, 
which might be Void – also known as “nothing”.

*3. You can create closures directly by assigning to a constant or variable.

*4. Closures that accept parameters or return a value must declare this inside their braces, followed by the keyword in.

5. Functions are able to accept other functions as parameters. 
They must declare up front exactly what data those functions must use, 
and Swift will ensure the rules are followed.

6. In this situation, instead of passing a dedicated function you can also pass a closure 
– you can make one directly. Swift allows both approaches to work.

7. When passing a closure as a function parameter, 
you don’t need to explicitly write out the types inside your closure if Swift can figure it out automatically. 
The same is true for the return value – if Swift can figure it out, you don’t need to specify it.

*8. If one or more of a function’s final parameters are functions, you can use trailing closure syntax.

9. You can also use shorthand parameter names such as $0 and $1, 
but I would recommend doing that only under some conditions.

10. You can make your own functions that accept functions as parameters, 
although in practice it’s much more important to know how to use them than how to create them.
*/