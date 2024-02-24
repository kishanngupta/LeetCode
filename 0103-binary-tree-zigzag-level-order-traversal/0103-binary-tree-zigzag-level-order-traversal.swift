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
    func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
        if root == nil { return [] }

        var queue = [root!]
        var result: [[Int]] = []
        var isLeftToRight = true

        while (!queue.isEmpty) {
            var temp: [Int] = []
            for _ in queue {
                let node = queue.removeFirst()
                if let left = node.left {
                    queue.append(left)
                }   
                if let right = node.right {
                    queue.append(right)
                }
                if isLeftToRight {
                    temp.append(node.val)
                } else {
                    temp.insert(node.val, at: 0)
                }
            }
            isLeftToRight = !isLeftToRight
            result.append(temp)
        }
        return result
    }
}