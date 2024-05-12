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
    func widthOfBinaryTree(_ root: TreeNode?) -> Int {
        
        var queue = [(root!, 1)]
        var result = 1

        while !queue.isEmpty {
            let start = queue.first!.1

            for _ in queue {
                let (node,num) = queue.removeFirst()
                result = max(result, num-start+1)
                // Very important to normalize index to avoid overflow
                let normalizedIndex = num - start

                if let leftNode = node.left {
                    queue.append((leftNode, normalizedIndex * 2 + 1))
                }
                if let rightNode = node.right {
                    queue.append((rightNode, normalizedIndex * 2 + 2))
                }
            }
        }

        return result
    }
}