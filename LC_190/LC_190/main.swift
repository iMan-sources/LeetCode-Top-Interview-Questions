//
//  main.swift
//  LC_190
//
//  Created by AnhLe on 13/04/2022.
//

import Foundation

func binaryToDecimal(bits: String) -> Int{
    let bits = Array(bits)
    var degree = bits.count - 1, result = 0
    for i in 0..<bits.count {
        if let bit = Int(String(bits[i])) {
            result += bit * Int(pow(Double(2), Double(degree)))
        }
        degree -= 1
    }
    return result
}

func reverseBits(_ n: Int) -> Int {
    
    let reversed = String(String(n).reversed())
    
    return binaryToDecimal(bits: reversed)
}

print(reverseBits(0101))
