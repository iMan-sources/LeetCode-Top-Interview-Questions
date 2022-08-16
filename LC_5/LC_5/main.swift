//
//  main.swift
//  LC_5
//
//  Created by AnhLe on 13/01/2022.
//

import Foundation

func expandFromCenter(s: [Character], l: Int, r: Int, start: inout Int, maxLength: inout Int){
    
    var l = l, r = r
    while l >= 0 && r < s.count && s[l] == s[r] {
        l-=1
        r+=1
    }
    
    if maxLength < r - l - 1 {
        start = l+1
        maxLength = r - l - 1
    }
}

func longestPalindrome(_ s: String) -> String {
    if s.count == 1 {
        return s
    }
    //do dai s le
    var start = 0, end = 0
    let charArray = Array(s)
    for i in 0..<charArray.count{
        expandFromCenter(s: charArray, l: i, r: i, start: &start, maxLength: &end)
        expandFromCenter(s: charArray, l: i, r: i+1, start: &start, maxLength: &end)
    }
    print(start)
    print(end)
    return String(charArray[start..<start+end])
}

print(longestPalindrome("ababb"))
