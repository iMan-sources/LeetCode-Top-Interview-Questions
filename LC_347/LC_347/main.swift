//
//  main.swift
//  LC_347
//
//  Created by AnhLe on 14/07/2022.
//

import Foundation

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var freq = [Int: Int]()
    for i in nums {
        if freq[i] == nil {
            freq[i] = 1;
        }else{
            freq[i]! += 1
        }
    }
    let r = freq.sorted(by: {$0.value > $1.value});
    var res = [Int]()
    for i in r {
        res.append(i.key)
    }
    return Array(res[0..<k]);
}

print(topKFrequent([1,1,1,2,2,3], 2));
