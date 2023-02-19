import Cocoa


// açıklamakla uğraşamayacağım şimdi, dikkatli oku isMultiple'yi araştır unutursan anlarsın.
let number1 = 3
let number2 = 5
var multiples = [Int]()

for i in 1...100 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2){
        print("FizzBuzz")
    }else if i.isMultiple(of: number1){
        print("Fizz")
    }else if i.isMultiple(of:number2){
        print("Buzz")
    }else{
        print(i)
    }
}
