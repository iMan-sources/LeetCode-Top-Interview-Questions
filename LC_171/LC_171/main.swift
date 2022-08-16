//
//  main.swift
//  LC_171
//
//  Created by AnhLe on 09/04/2022.
//

import Foundation

let alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L", "M","N","O","P","Q","R","S", "T","U", "V", "W", "X", "Y", "Z"]
func titleToNumber(_ columnTitle: String) -> Int {
    var dict = [String: Int](), result = 0, title = Array(columnTitle), col = 1
    //Initial
    for i in 0..<alphabet.count {
        dict[alphabet[i]] = i + 1
    }
    //execute
    
    for i in (0..<title.count).reversed()  {
        result += (dict[String(title[i])]! * col)
        col *= 26
    }
    return result
}

print(titleToNumber("FXSHRXW"))

