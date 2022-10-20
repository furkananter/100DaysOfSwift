import Cocoa

enum rootError {
    case errorNoNegativeNumbers, errorWrongType, errorNoRoot
}
func checkpointFunction(number: Int){
   // square root long way:
   if(number > 0 && number < 10000){
    for i in 1...number {
     let a = i*i
      if (number == a ) {
         print("that's it! Number is : √\(number) = \(i)")
         break
      }else if (number != a){
            print("\(number)'s root is not equal to = \(i) ")
      }
    }
   }else if number < 0 {
           print("no negative numbers")
   }else {
     print("Overvalued, need a smaller number")
   }
  
}

checkpointFunction(number: 144)
// A diye bir sayım var:
    // Bu a değeri kaç olursa onun kökünü bulmam gerekiyor.
    // 1 x 1 = 1
    // 2 x 2 = 4
    // 3 x 3 = 9
    // gibi...
 