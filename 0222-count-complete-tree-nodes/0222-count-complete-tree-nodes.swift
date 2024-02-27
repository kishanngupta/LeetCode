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
    
    var distance = 0
    
    func countNodes(_ root: TreeNode?) -> Int {
        travel(root)
        return distance
    }
    
    private func travel(_ root: TreeNode?) {
        if root == nil { return }
        distance += 1
        travel(root?.left)
        travel(root?.right)
    }
}