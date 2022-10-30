import Cocoa

// Task 7

class Animal {
    var legs: Int

    init(legs: Int){
        self.legs = legs
    }
}

class Dog: Animal{
    var speak: String

    init(legs: Int, speak: String) {
        self.speak = speak
        print("Barking")
    }
}

class Cat: Animal {
    var speak: String
    var isTame: Bool

    init(legs: Int, meow: String, isTame: Bool) {
        self.meow = meow
        self.isTame = isTame
        super.init(legs: legs)
    }
}


class Corgi: Dog {
    override func speak() {
        print("bark bark bark")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Wuf Wuf Wuf")
    }
}

let dog = Dog(legs: 4, speak: "Bark")
print(dog.speak)


//




// Çözüm 2:
class Animal {
    let legs: Int

    init(legs: Int){
        self.legs = max(legs,0) // legs değeri 0'dan küçükse 0 değerini alır.
    }
}
class Dog: Animal {
    init() {super.init(legs: 4)}
    public func speak() {print("Bark")}
}
class Cat: Animal {
    let isTame: Bool
    init(isTame isTameFromInit: Bool) {
        isTame = isTameFromInit
        super.init(legs:4)
    }
    public func speak() {print("Meow")}
}

class Corgi: Dog {
    override func speak() {print("Bark bark bark")}
}

class Poodle: Dog {
    override func speak() {print("Wuf wuf wuf")}
}
class Lion: Cat {
    init(){
        super.init(isTame: false)
    }
    override func speak() {print("Roar")}
}

class Persian: Cat {
    init() {
        super.init(isTame: true)
    }
    override func speak() {print("Meow meow meow")}
}


let corgi = Corgi()
let poodle = Poodle()
let lion = Lion()
let persian = Persian()
