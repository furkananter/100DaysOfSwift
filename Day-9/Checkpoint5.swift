import Cocoa

// Checkpoint5 - Closures 
//
func randomArrays(input: [Int]?) -> Int {return input?.randomElement() ?? Int.random(in: 1...100)} 
print(randomArrays(input: [1,2,3,4,5,6,7,8,9,10]))
print(randomArrays(input: nil))

// hiç uğraşamam anlatmakla, checkpoint 9 'u yaptım işte. 
//!!! OPTİONAL KISMINA CALİSİCAM!