//
//  main.swift
//  LC_28
//
//  Created by AnhLe on 26/01/2022.
//

import Foundation

func strStr(_ haystack: String, _ needle: String) -> Int {
    if haystack.isEmpty && needle.isEmpty {
         return 0
    }
    else if haystack.isEmpty && !needle.isEmpty {
        return -1
    }
    else if !haystack.isEmpty && needle.isEmpty {
        return 0 
    }
    else if !haystack.contains(needle) {
        return -1
    }
    else{
        let chars = Array(haystack)
        let char = Array(needle)
        for i in 0...chars.count - needle.count {
            var idx = 0
            for j in i..<needle.count + i {
                if chars[j] != char[idx] {
                    idx = 0
                    break
                }
                idx+=1
            }
            if idx != 0 {
                return i
            }
        }
    }
    return -1
}

print(strStr("hello", "ll"))
print(strStr("mississippi", "issip"))
print(strStr("a", "a"))
print(strStr("abc", "c"))
print(strStr("aaaaaaa", "bba"))
