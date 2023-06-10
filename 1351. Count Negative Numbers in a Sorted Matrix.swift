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
