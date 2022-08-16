//
//  main.swift
//  LC_204
//
//  Created by AnhLe on 17/04/2022.
//

import Foundation
var result = [Int]()
func sieveEratos(_ n: Int){
    var checked = [Bool](repeating: true, count: n+1)
    for i in 2..<n {
        if checked[i] {
            var j = 2 * i
            while j <= n {
                checked[j] = false
                j += i
            }
        }
    }
    for i in 2..<n {
        if checked[i] {
            result.append(i)
        }
    }
}

func countPrimes(_ n: Int) -> Int {
    if n < 2 {
        return 0
    }
    result.removeAll()
    sieveEratos(n)
    
    return result.count
}

print("DEBUG: \(countPrimes(2))")

