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

class Codec {
    func serialize(_ root: TreeNode?) -> String {
        if root == nil {
            return "NULL,"
        }
        return "\(root!.val)," + serialize(root?.left) + serialize(root?.right)
    }
    
    private func deserialize(_ queue: inout [String]) -> TreeNode? {
        let first = queue.removeFirst()
        if first == "NULL" {
            return nil
        }
        let root = TreeNode(Int(first) ?? 0)
        root.left = deserialize(&queue)
        root.right = deserialize(&queue)
        return root
    }
    
    func deserialize(_ data: String) -> TreeNode? {
        var queue = data.components(separatedBy: ",")
        return deserialize(&queue)
    }
}

// Your Codec object will be instantiated and called as such:
// var ser = Codec()
// var deser = Codec()
// deser.deserialize(ser.serialize(root))