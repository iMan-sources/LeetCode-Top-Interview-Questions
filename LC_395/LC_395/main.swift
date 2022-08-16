//
//  main.swift
//  LC_395
//
//  Created by AnhLe on 21/07/2022.
//

import Foundation

var dict = [Character: Int]();

func valid(_ chars: [Character], _ k: Int) -> Bool{
    print(dict)
    for i in 0..<chars.count {
        if dict[chars[i]]! < k {

            return false
        }
    }
   
    return true
}

func longestSubstring(_ s: String, _ k: Int) -> Int {
    let chars = Array(s);
    var q = 0
    for i in 0..<chars.count {
        if dict[chars[i]] == nil {
            dict[chars[i]] = 0
            dict[chars[i]]! += 1
        }else{
            dict[chars[i]]! += 1
        }
        for j in 0...i {
            if dict[chars[j]]! >= k {
                q = max(q, j+1);
            }else{
                break
            }
        }

    }
    return q
}

print(longestSubstring("ababbc", 3))
print(longestSubstring("a", 1))
print(longestSubstring("ababacb", 3))
