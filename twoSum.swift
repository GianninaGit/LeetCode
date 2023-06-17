//Given an array of integers nums and an integer target,
//return indices of the two numbers such that they add up to target.
//You may assume that each input would have exactly one solution,
//and you may not use the same element twice.
//You can return the answer in any order.

//Input: nums = [2,7,11,15], target = 9
//Output: [0,1]
//Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

//Input: nums = [3,2,4], target = 6
//Output: [1,2]

//Input: nums = [3,3], target = 6
//Output: [0,1]

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    //let lista = [0,23,4,5,6,7,8] tarjet: 11 - Out: [3, 4]
                 //0-1--2-3-4-5-6
    for primerElemIndex in 0...(nums.count - 1) {
        let primerValor = nums[primerElemIndex]
        for segundoElemIndex in (primerElemIndex + 1)...(nums.count - 1) {
            let segundoValor = nums[segundoElemIndex]
            if segundoValor + primerValor == target {
                return [primerElemIndex, segundoElemIndex]
            }
        }
    }
    return []
}
 
func twoSumBis(_ nums: [Int], _ target: Int) -> [Int] {
    //let lista = [0,23,4,5,6,7,8] tarjet: 11 - Out: [3, 4]
                 //0-1--2-3-4-5-6
    for primerElemIndex in 0...(nums.count - 1) {
        for segundoElemIndex in 0...(nums.count - 1) {
            if nums[segundoElemIndex] + nums[primerElemIndex] == target && primerElemIndex != segundoElemIndex {
                return [primerElemIndex, segundoElemIndex]
            }
        }
    }
    return []
}
