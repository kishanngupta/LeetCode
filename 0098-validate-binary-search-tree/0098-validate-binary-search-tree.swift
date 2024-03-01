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
    func isValidBST(_ root: TreeNode?) -> Bool {
        
        var head: Int = root!.val
        var prev: Int = Int.min
        return travel(root, &head, &prev)
    }

    func travel(_ root: TreeNode?, _ head:inout Int, _ prev: inout Int) -> Bool {
        if root == nil { return true }
        let left = travel(root?.left, &head, &prev)
        if prev == Int.min || prev < root!.val {
            prev = root!.val    
        } else {
            return false
        }
        let right = travel(root?.right, &head, &prev)
        return left && right
    }
}