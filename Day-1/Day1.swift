
import Cocoa

var greeting = "merhaba dunya"

print(greeting)

    // Gün 1: 
/*
 Gün 1 içerisinde greeting adında bir merhaba dünya değişkeni oluşturduk ve bu değişkeni print() fonksiyonunu kullanarak yazdırdık.
 
 */ 

greeting = "Selam dümenden"
print(greeting)
greeting = "ikinci kez selam dedik ve değişti"
print(greeting)

    // var değiştirilebilir. let için deneyelim. 

let isim = "furkan"
print(isim)

// isim = "Kadir Hoca"
    // görüldüğü üzere adımı kadir hoca yapamıyorum, nedeni ise let olması
// print(isim)

    // String oluştururken yukarıdaki gibi kullanırız fakat farklı şekillerde de oluşturulabilir.

let dumenden = """
    dümenden bir şeyler yazılacak buraya
    """

print(dumenden)

    // """ kullanılırsa da string yazdırılabilir. Bunu birden fazla satır için kullanırız. 
    // .count ise length'ini vermek için kullanılır.

print(dumenden.count)


    // 
