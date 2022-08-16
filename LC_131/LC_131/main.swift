//
//  main.swift
//  LC_131
//
//  Created by AnhLe on 22/03/2022.
//

import Foundation

class Solution {
    var array = [Int](), mat = [[String]](), set = Set<[String]>()
    
    func isValidrome(s: String) -> Bool{
        let reversedWord = String(Array(s).reversed())
        if s == reversedWord {
            return true
        }
        return false
    }
    
    func generateWord(_ s: String){
        var res_0 = "", res_1 = "",result = [String]()
        let word = Array(s)
        for i in 0..<array.count {
            if array[i] == 0 {
                if res_1 != "" {
                    result.append(res_1)
                    res_1.removeAll()
                }
                res_0.append(word[i])
            }else{
                if res_0 != "" {
                    result.append(res_0)
                    res_0.removeAll()
                }
                res_1.append(word[i])
            }
        }
        if res_0 != "" {
            result.append(res_0)
        }
        if res_1 != "" {
            result.append(res_1)
        }
        
        if !set.contains(result) {
            var checked = true
            for i in 0..<result.count {
                if !isValidrome(s: result[i]) {
                    checked = false
                    break
                }
            }
            if checked {
                mat.append(result)
            }
            set.insert(result)
        }
        
    }
    func Try(i: Int,s: String){
        for j in 0...1{
            array[i] = j
            if i == array.count-1 {
                generateWord(s)
            }
            else{
                Try(i: i+1, s: s)
            }
        }
    }
    
    func partition(_ s: String) -> [[String]] {
        mat.removeAll()
        array = [Int](repeating: 0, count: s.count)
        Try(i: 0, s: s)
        return mat
    }
    
}

var solution = Solution()
_ = solution.partition("aab")



