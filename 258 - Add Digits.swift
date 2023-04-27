//Given an integer num, repeatedly add all its digits until the result has only one digit, and return it.

class Solution {
    func addDigits(_ num: Int) -> Int {
        
        var numInicial = num
        while numInicial > 9 {
            var contenedor = 0
            while numInicial > 0 {
                contenedor = contenedor + (numInicial % 10) //aca obtengo el resto del numInicial al dividirlo por 10, que sería el último dígito del numInicial
                numInicial = numInicial / 10 //aca elimino el último dígito del numInicial (para que no sea tenido en cuenta nuevamente)
            }
            numInicial = contenedor
        }
        return numInicial
    }
}


let objeto = Solution()
print(objeto.addDigits(333))
      
        
