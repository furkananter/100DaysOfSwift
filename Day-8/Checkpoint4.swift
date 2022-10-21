import Cocoa
// enum bizim hatalarımızı yönetmemizi sağlıyor.
// 3 tip hata belirledim. bunlar negatif numaralar olamaz. Aralık dışında olamaz. ve kökü yok.

enum RootError : Error {
   case negativeNumber, outOfBounds, noSquareRoot
}
// fonksiyonumu oluşturdum. sqrt adında bir label'im var. bu label number değişkeni ile kullanılıyor ve INT olmalı
/*
   * throws ile fonksiyonumuzun hata fırlatabileceğini belirtiyoruz.
   * if ile aralık dışı sayılar için hata  fırlatıyoruz.
   * for ile kökü olup olmadığını kontrol ediyoruz.
   * bunu yaparken i * i ile kullanıcının vereceği sayıyı (number) i eşitliyoruz. Eğer eşitse kökü var demektir.
   * break ile işlemi durduruyoruz.
   * eğer çarpım eşleşmiyorsa bunu hata olarak fırlatıyoruz. 
*/
func getSquare(sqrt number: Int) throws {
   if number < 1 || number > 10_000 {
      throw RootError.outOfBounds
   }
   
   for i in 1...100 {
      if i * i == number {
         print("The square root of \(number) is \(i)")
         break
      }
      if (number != i * i) && (i == 100) {
         throw RootError.noSquareRoot
      }
   }
}
/*
   * do ile başlıyoruz. try ile getSquare() fonksiyonunu çağırıyoruz.
   * catch ile hata fırlatıyoruz.
*/
do{
   try getSquare(sqrt: 8100)
}
catch RootError.noSquareRoot {
   print("There is no square root")
}
catch RootError.negativeNumber{
   print("Please use a positive number")
}
catch RootError.outOfBounds{
   print("Please use a number between 1 and 10.000")
}
// A diye bir sayım var:
    // Bu a değeri kaç olursa onun kökünü bulmam gerekiyor.
    // 1 x 1 = 1
    // 2 x 2 = 4
    // 3 x 3 = 9
    // gibi...
 