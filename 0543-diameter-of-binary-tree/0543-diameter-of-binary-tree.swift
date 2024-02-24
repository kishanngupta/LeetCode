/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    var diameter = 0
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        height(root)
        return diameter
    }

    private func height(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        let left = height(root?.left)
        let right = height(root?.right)
        diameter = max(diameter, left+right)
        return max(left, right) + 1
    }
}