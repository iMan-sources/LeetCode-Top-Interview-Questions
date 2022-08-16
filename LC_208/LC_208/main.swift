//
//  main.swift
//  LC_208
//
//  Created by AnhLe on 24/04/2022.
//

import Foundation

class Trie {
    var dict: [Character: Set<String>]
    init() {
        dict = [Character: Set<String>]()
    }
    
    func insert(_ word: String) {
        let letter = Array(word)[0]
        if dict[letter] == nil {
            dict[letter] = Set<String>()
        }
        dict[letter]?.insert(word)
    }
    
    func search(_ word: String) -> Bool {
        let letter = Array(word)[0]
        guard let value = dict[letter] else {
            return false
        }
        return value.contains(word)
    }
    
    func startsWith(_ prefix: String) -> Bool {
        
        let letter = Array(prefix)[0]
        
        guard let value = dict[letter] else{
            return false
        }
        for i in 0..<value.count {
            let index = value.index(value.startIndex, offsetBy: i)
            if value[index].hasPrefix(prefix) {
                return true
            }
        }
        return false
    }
}

