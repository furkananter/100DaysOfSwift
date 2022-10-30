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

    init(legs: Int, bark: String) {
        self.bark = bark
        super.init(legs: legs)
    }
}

class Cat: Animal {
    var meow: String

    init(legs: Int, meow: String) {
        self.meow = meow
        super.init(legs: legs)
    }
}