import Cocoa

// func getUser() {
//     print("user")
// }
// getUser()

// var userss = getUser
// userss()

// degiskeni fonksiyona dönüstürmek

let style = {
    print("güzel özellikmiş.")
}

style()

// in kullanmak zorundayız çünkü diğer türlü bunu parametreli bir fonksiyona döndüremeyiz.


// let user = { (name: String) -> String in
//     "Hello \(name)"
// }


// *
// var greetCopy: () -> Void = style


// func getVal(for id: Int) -> String {
//     if id == 1964 {
//        return "Furkans"
//     }else{
//        return "Şevval"
//     }
// }

// let data: (Int) -> String = getVal
// let user = data(19624)
// print(user)

// Sorted()

let team = ["furkans", "ömers","mustafas","ayşes","alis","şevvals"]
let sortedTeam = team.sorted()
print(sortedTeam)