//
//  main.swift
//  LC_371
//
//  Created by AnhLe on 08/07/2022.
//

import Foundation

func getSum(_ a: Int, _ b: Int) -> Int {
    var res = a
    var b = b
    while b > 0 {
        res+=1;
        b -= 1;
    }
    return res
}

