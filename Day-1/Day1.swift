
import Cocoa

var greeting = "merhaba dunya"

// print(greeting)

    // Gün 1: 
/*
 Gün 1 içerisinde greeting adında bir merhaba dünya değişkeni oluşturduk ve bu değişkeni print() fonksiyonunu kullanarak yazdırdık.
 
 */ 

greeting = "Selam dümenden"
// print(greeting)
greeting = "ikinci kez selam dedik ve değişti"
// print(greeting)

    // var değiştirilebilir. let için deneyelim. 

let isim = "furkan"
// print(isim.count)

// isim = "Kadir Hoca"
    // görüldüğü üzere adımı kadir hoca yapamıyorum, nedeni ise let olması
// print(isim)

    // String oluştururken yukarıdaki gibi kullanırız fakat farklı şekillerde de oluşturulabilir.

let dumenden = """
    dümenden bir şeyler yazılacak buraya
    """

// print(dumenden)

    // """ kullanılırsa da string yazdırılabilir. Bunu birden fazla satır için kullanırız. 
    // .count ise length'ini vermek için kullanılır.

// print(dumenden.count)


    // SAYILAR
// Score1, Score2, Score3 aynıdır.

let score1 = 100000000
let score2 = 100_000_000
let score3 = 1_0_0_0_0_0_0_0_0
//print(score1)
//print(score2)
//print(score3)

    // Integer'larda güzel bazı özellikler var:
    // isMultiple(of:) gibi...
    // bu bunun katı mı anlamında. Mesela 40 ' 5 'in katı mı?
    // True döner

let multiple = 40

// print(multiple.isMultiple(of: 5))

    // DECIMAL SAYILAR

let decimalss = 0.1
let decimalss2 = 0.2

// print(decimalss + decimalss2)

    // Double... 

let doublx = 0.1
let intx = 3
    // toplatmazlar adama...
// print(doublx + intx)

// Yapabilmek için şunu yapmak gerekiyo:
// doublx 'imizi integer'a çevirdik.

// How to store Decimal numbers tek

let toplams = Int(doublx) + intx
// print(toplams)
