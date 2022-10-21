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
// uzun olarak böyle yapabiliriz. ama closure kullanarak daha kısa bir şekilde yapabiliriz.
// let team = ["furkans", "ömers","mustafas","ayşes","alis","şevvals"]
// let sortedTeam = team.sorted()
// print(sortedTeam)

// func getFirstOrder(name1: String, name2: String) -> Bool {
//     if name1 == "şevvals" {
//         return true
//     }else if name2 == "şevvals" {
//         return false
//     }
//    return name1 < name2 
// }
// let getFirstTeam = team.sorted(by: getFirstOrder)
// print(getFirstTeam)
// daha kısa yolu da şu:

// let team2 = ["furkans", "ömers","mustafas","ayşes","alis","şevvals"]
// let sortedTeam = team2.sorted(by:{(name1: String, name2: String) -> Bool in 
//     if name1 == "şevvals"{
//         return true
//     }else if name2 == "şevvals"{
//         return false
//     }
//     return name1 < name2
// })
// print(sortedTeam)

// bu da farklı bir gösterimi

// let sortedTeamChanged = team2.sorted(by: {(name1, name2) in 
//     if name1 == "şevvals"{
//         return true
//     }else if name2 == "şevvals"{
//         return false
//     }
//     return name1 < name2
// })

// print(sortedTeamChanged)

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