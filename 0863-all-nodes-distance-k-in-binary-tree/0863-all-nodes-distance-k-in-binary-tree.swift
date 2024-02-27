/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    private var hash: [Int: TreeNode] = [:]
    private var visited: [Int: Bool] = [:]
    private var result: [Int] = []

    func distanceK(_ root: TreeNode?, _ target: TreeNode?, _ k: Int) -> [Int] {
        if root == nil { return [] }       
        var queue = [root!]

        while(!queue.isEmpty) {
            for _ in queue {
                let node = queue.removeFirst()
                if let left = node.left {
                    queue.append(left)
                    hash[left.val] = node
                    // print("hash- key", left.val,"value", node.val )
                }
                if let right = node.right {
                    queue.append(right)
                    hash[right.val] = node
                    // print("hash- key", right.val,"value", node.val )
                }
            }
        }
        travel(target, 0, k)
        return result
    }

    private func travel(_ root: TreeNode?,_ distance: Int,_ k: Int) {
        if root == nil || visited[root!.val] != nil || distance > k { return }
        if distance == k {
            result.append(root!.val)
            return
        }
        visited[root!.val] = true
        if let value = hash[root!.val] {
            travel(value, distance+1, k)
        }
        travel(root?.left, distance+1, k)
        travel(root?.right, distance+1, k)
    }
}