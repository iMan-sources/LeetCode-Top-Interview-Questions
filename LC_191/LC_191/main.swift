//
//  main.swift
//  LC_191
//
//  Created by AnhLe on 29/06/2022.
//

import Foundation

func hammingWeight(_ n: Int) -> Int {
    return String(n, radix: 2).filter({ $0 == "1" }).count
}

print(hammingWeight(00000000000000000000000000001011))
