//Given a m x n matrix grid which is sorted in non-increasing order both row-wise and column-wise, return the number of negative numbers in grid.
//Example 1:
//Input: grid = [[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]
//Output: 8
//Explanation: There are 8 negatives number in the matrix.

func countNegatives(_ grid: [[Int]]) -> Int {
    var contador = 0
    
    for row in grid {
            for item in row {
                if item < 0 {
                contador += 1
            }
        }
        
    }
    return contador
}
