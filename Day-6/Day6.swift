import Cocoa
// while döngüsü, count için

// var count = 10
// while count > 0 {
//     count -= 1
//     print(count)
// }

// for döngüsü

// var i = 0
// for item in 1...12 {
//     i += 1
//     print(i)
    
// }
    
// random olayları

// let id = Int.random(in: 1...100)
// print(id)
//* Multiple çözümü yaptık
//? Bu ne GARDAŞ? Açıklıyom:
//* 1. Önce 2 tane numara oluşturdum ve bunlara bir değer atadım.
    //* Bu numaralar, 5, 17 olsun. Bu numaraların ortak olan katlarını bulacağız.
    //* mesela hem 5 hem de 17'ye bölünebilen sayılar var mı? varsa bunları bulacağız.
    //* 85 ve 170 gibi. i aralığını 100k olarak veriyorum ama onu aşağıda 10 tane olarak sınırlayacağım.
    //* yoksa aya kadar gider o kodlar.
    //* for döngüsünün içinde if kontrolü yaptım. Eğer i'yi 5'e ve 17'ye bölünebilirsek
    //* bunu multiple adlı bir array'e atıyoruz.
    //* sonra da multiple array'ini yazdırıyoruz.
    //* 😘
//! şu let'i hiç sevmedim yokmuymuş const
// let number1 = 5
// let number2 = 17
// var multiples = [Int]()

// for i in 1...100_000{
//     if i.isMultiple(of: number1) && i.isMultiple(of: number2){
//         multiples.append(i)
//     }
//     if multiples.count == 10 {
//         break
//     }
// }
// print(multiples)
// 