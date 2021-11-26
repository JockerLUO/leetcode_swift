//
//  TreeNode.swift
//  leetcode_swift
//
//  Created by jocker luo on 2021/11/26.
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
    
    static func format(_ ls: [Int])-> TreeNode? {
        guard !ls.isEmpty else {
            return nil
        }        
        return nil
    }
}