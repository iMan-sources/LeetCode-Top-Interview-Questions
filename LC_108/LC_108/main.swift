//
//  main.swift
//  LC_108
//
//  Created by AnhLe on 12/03/2022.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}


func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
    if nums.isEmpty {
        return nil
    }
    let mid = nums.count / 2
    let root = TreeNode(nums[mid])
    root.left = sortedArrayToBST(Array(nums[0..<mid]))
    root.right = sortedArrayToBST(Array(nums[mid+1..<nums.count]))
    return root
}

print(sortedArrayToBST([-10,-3,0,5,9]))

