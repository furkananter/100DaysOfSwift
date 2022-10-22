// YEEBUDY! 10.Gün

//Struct Oluşturacağız.
struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) by \(artist) was released in \(year)")
    }
}

let red: Album = Album(title: "Red", artist: "Furkans", year: 2020)

red.printSummary()