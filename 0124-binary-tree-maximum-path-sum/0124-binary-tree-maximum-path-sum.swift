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
    var maxi = 0
    func maxPathSum(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        maxi = root!.val
        findSum(root)
        return maxi
    }

    private func findSum(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        var left = findSum(root?.left)
        var right = findSum(root?.right)
        if left < 0 {
            left = 0
        }
        if right < 0 {
            right = 0
        }
        maxi = max(maxi, root!.val + left + right)
        return root!.val + max(left, right)
    }
}