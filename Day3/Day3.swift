import Cocoa

var names = ["furkan", "emre", "ahmet", "kadir"]
var soyad = ["bilmemne", "bilmemne" , "bilmemne" , "bilmemne" ]
var yas = [12.2, 23.2 ,34.3, 55.5]

// Verilerimizi dizilerde depolayabiliriz.

print(names[0])
print(soyad[2])
print(yas[0])

// Swift'te veri eklemek için yapmamız gereken bir şey var: 

// append kullanarak dizilerimize veri ekleyebiliriz. 

names.append("furkaaaaaanssss")

// Şimdii, dümenden dizilerimizi nasıl type safe yazarız onu açıklıyorum:

var Arrrrrays =  [String]()
// bunu şöyle de yazabilirdik: 
var ArrayinNormalHali = Array<Int>()
ArrayinNormalHali.append(1)
ArrayinNormalHali.append(2)
print(ArrayinNormalHali)

// indeksteki sayıyı sil
ArrayinNormalHali.remove(at: 1)
// removeAll ile hepsini siler ama ben simdilik silmiyorum.
print(ArrayinNormalHali)

// count ile sayı alınır.

