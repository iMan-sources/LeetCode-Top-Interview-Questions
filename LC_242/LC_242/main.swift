//
//  main.swift
//  LC_242
//
//  Created by AnhLe on 02/07/2022.
//

import Foundation

func isAnagram(_ s: String, _ t: String) -> Bool {
    if s.count != t.count {
        return false
    }
    var s_dict = [String: Int](), t_dict = [String:Int](), res = true
    let s = Array(s)
    let t = Array(t)
    
    for i in 0..<s.count {
        if s_dict[String(s[i])] != nil{
            s_dict[String(s[i])]! += 1
        }else{
            s_dict[String(s[i])] = 1
        }
    }
    
    for i in 0..<t.count {
        if t_dict[String(t[i])] != nil{
            t_dict[String(t[i])]! += 1
        }else{
            t_dict[String(t[i])] = 1
        }
    }
    
    for (key, _) in s_dict {
        guard t_dict[key] != nil, t_dict[key] == s_dict[key] else {
            res = false
            return false
        }
    }
    
    return res
    
}

print(isAnagram("anagram", "nagaram"))
print(isAnagram("rat", "car"))
