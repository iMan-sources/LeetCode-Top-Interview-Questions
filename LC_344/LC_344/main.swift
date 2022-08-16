//
//  main.swift
//  LC_344
//
//  Created by AnhLe on 14/07/2022.
//

import Foundation

func reverseString(_ s: inout [Character]) {
    var en = s.count - 1, st = 0;
    while en > st {
        s.swapAt(st, en);
        en -= 1;
        st += 1;
    }
}
var s: [Character] =  ["h","e","l","l","o"];
reverseString(&s);

