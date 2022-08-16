//
//  main.swift
//  LC_9
//
//  Created by AnhLe on 19/01/2022.
//

import Foundation

func isPalindrome(_ x: Int) -> Bool {
    let model = String(x), array = Array(model)
    var palindrome = ""
    for i in (0..<array.count).reversed() {
        palindrome.append(array[i])
    }
    if palindrome == model {
        return true
    }
    return false
}

