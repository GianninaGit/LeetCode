//Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same. Then return the number of unique elements in nums.
//Consider the number of unique elements of nums to be k, to get accepted, you need to do the following things:
//Change the array nums such that the first k elements of nums contain the unique elements in the order they were present in nums initially. The remaining elements of nums are not important as well as the size of nums.
//Return k.
//Input: nums = [0,0,1,1,1,2,2,3,3,4]
//Output: 5, nums = [0,1,2,3,4,_,_,_,_,_]
//Explanation: Your function should return k = 5, with the first five elements of nums being 0, 1, 2, 3, and 4 respectively.
//It does not matter what you leave beyond the returned k (hence they are underscores).

func removeDuplicates(_ nums: inout [Int]) -> Int {
//    solo va a revisar las posiciones que yo le indique de 0 a k. pisa la posicion y mete el valor que quiero
    var elemAnterior: Int? = nil
    var marcador = 0
    
    for elem in nums {
        if elem != elemAnterior {
            nums[marcador] = elem
            marcador += 1
        }
        elemAnterior = elem
    }
    return marcador
}

var lista = [0,0,1,1,1,2,2,3,3,4]
removeDuplicates(&lista)
lista


func removeDuplicates(_ nums: inout [Int]) -> Int {
    var anterior:Int? = nil
    var output:[Int] = []
    var accum = 0
    for posicionIndex in 0...(nums.count - 1) { //mueve posición
        let valor = nums[posicionIndex]
        if valor != anterior {
            accum += 1
            output.append(valor)
        }
        anterior = valor
    }
    nums = output
    return accum
}
