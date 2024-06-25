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
    var sum = 0

    func bstToGst(_ root: TreeNode?) -> TreeNode? {
        if root == nil { return nil }    
        if let right = root?.right {
            bstToGst(right)    
        }
        sum += root!.val
        root?.val = sum

        if let left = root?.left {
            bstToGst(left)
        }
        return root
    }
}