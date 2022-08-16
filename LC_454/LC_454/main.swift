//
//  main.swift
//  LC_454
//
//  Created by AnhLe on 25/07/2022.
//

import Foundation

func fourSumCount(_ nums1: [Int], _ nums2: [Int], _ nums3: [Int], _ nums4: [Int]) -> Int {
    let nums1 = nums1.sorted()
    let nums2 = nums2.sorted()
    let nums3 = nums3.sorted()
    let nums4 = nums4.sorted()
    
    var l = 0, j = 0, k = 0
    for i in 0..<nums4.count{
        while true {
            let sum = nums1[l] + nums2[j] + nums3[k] + nums4[i]
            if sum == 0{
                print(k);
            }
            else if sum - nums1[l] < 0 && l + 1 < nums1.count {
                l += 1
            }
            else if sum - nums1[l] > 0 && l - 1 >= 0 {
                l -= 1
            }
            else if sum - nums2[j] < 0 && j + 1 < nums1.count {
                j += 1
            }
            else if sum - nums2[j] > 0 && j - 1 >= 0 {
                j -= 1
            }
            else if sum - nums3[k] < 0 && k + 1 < nums1.count {
                k += 1
            }
            else if sum - nums3[k] > 0 && k - 1 >= 0 {
                k -= 1
            }
        }
    }
    return 0
}

fourSumCount([1,2], [-2,-1], [-1,2], [0,2])
