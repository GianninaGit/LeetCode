//14. Longest Common Prefix
//Write a function to find the longest common prefix string amongst an array of strings.
//If there is no common prefix, return an empty string "".
//Example 1:
//Input: strs = ["flower","flow","flight"]
//Output: "fl"
//Example 2:
//Input: strs = ["dog","racecar","car"]
//Output: ""
//Explanation: There is no common prefix among the input strings.

extension String {
    func characterAt(at:Int) -> Character {
        let letraIndex = self.index(self.startIndex, offsetBy: at) //H
        return self[letraIndex]
    }
    
    func prefix(upTo:Int) -> String {
        let letraIndex = self.index(self.startIndex, offsetBy: upTo + 1) //H
        return String(self.prefix(upTo: letraIndex))
    }
}


func sonLetrasIgualesEnPosicion(at position: Int, listaDePalabras: [String]) -> Bool {
    let letra = listaDePalabras[0].characterAt(at: position)
    
    for palabra in listaDePalabras {
        let letraActual = palabra.characterAt(at: position)
        if letraActual != letra {
            return false
        }
    }
    return true
}

func longestCommonPrefix(_ strs: [String]) -> String {
    
    var indexEqual = 0
    let minCount = strs.min { s1, s2 in
        s1.count < s2.count
    }?.count ?? 1
    
    for index in 0...(minCount - 1) {
        indexEqual = index
        if !sonLetrasIgualesEnPosicion(at: index, listaDePalabras: strs) {
            break
        }
    }

    return strs[0].prefix(upTo: indexEqual)
}

var array = ["flower", "flow"]
sonLetrasIgualesEnPosicion(at: 2, listaDePalabras: ["flower", "flow"])
longestCommonPrefix(array)
