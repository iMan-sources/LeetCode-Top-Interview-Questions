//
//  main.swift
//  LC_125
//
//  Created by AnhLe on 16/03/2022.
//

import Foundation

func isPalindrome(_ s: String) -> Bool {
    var chars = [Character]()
    for i in s {
        if (i >= "a" && i <= "z") || (i >= "A" && i <= "Z") || (i >= "0" && i <= "9") {
            chars.append(i)
        }
    }
    let origin = String(chars).lowercased()
    chars = chars.reversed()
    let reversed = String(chars).lowercased()
    return origin == reversed
    
}

print(isPalindrome("0P"))

