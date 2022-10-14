import Cocoa

let username = "Furkan"
var score = 0

// bunu type vererek de şöyle yapardık:

let usernameTypeli: String = "Furkans"
var scoreTypeli: Int = 0

// Eğer score değişkeni gibi bir değişkenin varsa ve bu yarım puanlar da alması gerekiyorsa şöyle yapıyorsun:

var scoreTyps: Double = 32.5

// String, Text tutar.
// Double, Decimal tutar.
// Int, tüm sayıları tutar.
// bool, True ya da False tutar.
// Arrays (diziler) birden çok değer tutar.

// :String , string depolanmasını sağlar.
let playerName: String = "Asmodeus"
// :Int , integer depolanmasını sağlar.
let playerScore: Int = 32
// :Double , decimal depolanmasını sağlar.
let playerScoreDouble: Double = 32.5
// :Bool , true ya da false depolanmasını sağlar.
let playersBool: Bool = True

// Arrays (diziler) birden çok değer tutar. Örneğin:
let playersArray: [String] = ["Furkan", "Ömer"]

// Dictionary (sözlük) birden çok değer tutar. Örneğin:
let playersDictionary: [String: String] = [
    "Ben": "Furkan",
    "Sen": "Ömer"
]

// Oldukça farklı örneklerle karşılaşılabileceği için bu durumda type belirtilmesi çok önemlidir.
// Örneğin: [String: Int] gibi bir durumda, bir string bir de integer değer tutulur.

// Set (küme) birden çok değer tutar. Bunları da bir sırada tutar. Örneğin: 

let playersSet: Set<String> = Set(["Furkan","Kadir Hoca"])
// Setlerde aynı değerler birden fazla yazılamaz. Örneğin: "Furkan" değeri birden fazla yazılamaz.
// 
var kolas: [String] = ["Coca Cola", "Fanta","Cola Turka"]
// Type belirtmek yukarıda çok gerekli değil fakat eğer boş bir array oluşturmak isteniyorsa şöyle yapılır:
var kolas2: [String] = [String]()
// Gerekli değil fakat bu yol bilinmeli

// Bazı insanlar yukarıdakini şöyle yapar:
var kolas3: [String] = []

// Ben type belirtmeyi mümkün olduğunca şöyle yapmaya çalışıyorum:
var kolas4: [String]()

// Bunların yanında Enum (enumaration) da bir type belirtme yöntemidir. Örneğin:
// enumlar kendi type'larımızı yazmamıza yarar. Enum'un değerleri aynı tipte type'lar olmak zorundadır.
enum theme {
    case light, dark ,system
}

var style = theme.dark

/*
Dictionaries also let us store lots of values in one place, but let us read them out using keys we specify. 
They must be specialized to have one specific type for key and another for the value, 
and have similar functionality to arrays, 
such as contains() and count.


Sets are a third way of storing lots of values in one place, but we don’t get to choose the order in which they store those items. 
Sets are really efficient at finding whether they contain a specific item.


Enums let us create our own simple types in Swift so that we can specify a range of acceptable values such as a list of actions the user can perform, 
the types of files we are able to write, or the types of notification to send to the user.

Swift must always know the type of data inside a constant or variable, 
and mostly uses type inference to figure that out based on the data we assign. 
However, it’s also possible to use type annotation to force a particular type.
*/

// 

