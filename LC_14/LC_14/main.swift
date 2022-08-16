//
//  main.swift
//  LC_14
//
//  Created by AnhLe on 22/01/2022.
//

import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    var res = "", index = 0
    if strs.isEmpty {
        return ""
    }
    let model = Array(strs[0])
    while index < strs[0].count {
        let char = model[index]
        for i in 1..<strs.count {
            let arr = Array(strs[i])
            if index >= arr.count {
                return res
            }
            if char != arr[index] {
                return res
            }
        }
        res.append(char)
        index += 1
    }
    return res
}
print(longestCommonPrefix(["ab","a"]))
print(longestCommonPrefix(["flower","flow","flight"]))
