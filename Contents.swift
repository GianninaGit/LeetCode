
func isPalindrome(_ x: Int) -> Bool {

    let numeroOriginal = String(x)
    let numeroInvertido = String(numeroOriginal.reversed())
    
    return numeroOriginal == numeroInvertido
}

isPalindrome(172)


func romanToInt(_ s: String) -> Int {

    let symbol: [String: Int] = [
        "I" : 1,
        "V" : 5,
        "X" : 10,
        "L" : 50,
        "C" : 100,
        "D" : 500,
        "M" : 1000
    ]
    
    var cajita = 0
        
    for char in s {
        
        var numInt = symbol. //symbol[I] -> 1
        cajita += numInt!
//
//        switch s {
//
//        case "IV":
//            cajita += 4
//        case "IX":
//            cajita += 9
//        case "XL":
//            cajita += 40
//        case "XC":
//            cajita += 90
//        case "CD":
//            cajita += 400
//        case "CM":
//            cajita += 900
//        default:
//            cajita += numInt!
//        }
    }
    return cajita
}
romanToInt("I")


