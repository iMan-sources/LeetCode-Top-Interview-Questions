//
//  main.swift
//  LC_263
//
//  Created by AnhLe on 04/07/2022.
//

import Foundation

func isUgly(_ n: Int) -> Bool {
    var n = n
    while n > 1 {
        if n % 2 == 0 {
            n /= 2
        }else if n % 3 == 0{
            n /= 3
        }else if n % 5 == 0{
            n /= 5
        }else{
            break
        }
    }
    if n == 2 || n == 3 || n == 5 || n == 1 {
        return true
    }
    return false
}
