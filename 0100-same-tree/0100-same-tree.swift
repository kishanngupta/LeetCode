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
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        return isIdentical(p,q)
    }

    private func isIdentical(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if q == nil && p == nil { return true }
        else if p == nil || q == nil { return false }
        
        if p!.val != q!.val { return false }
        let left = isIdentical(p?.left, q?.left)
        let right = isIdentical(p?.right, q?.right)

        if left == false || right == false { return false }
        return true
    }
}