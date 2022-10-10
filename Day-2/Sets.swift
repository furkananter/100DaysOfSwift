import Foundation

let colors = Set(["furkan", "ömer", "aslı"])

let colors2 = Set(["furkan", "ömer", "aslı", "furkan"])
// Bu kod çalışmayacaktır çünkü set ile Array arasında bazı farklar bulunmaktadır. 
// Setlerde aynı elemanı birden fazla yazamayız.
// Setlerde sıralama yoktur.
print(colors)
print(colors2)