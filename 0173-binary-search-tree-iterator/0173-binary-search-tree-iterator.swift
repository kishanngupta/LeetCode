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

class BSTIterator {
    var root: TreeNode?
    /// this stack will store the tree-nodes
    /// note - we are trying to replicate the recursion behavior with the help of stack
    var stack: [TreeNode] = []

    init(_ root: TreeNode?) {
        self.root = root
        /// add root and its all left children
        addLeft(root)
    }

    private func addLeft(_ root: TreeNode?) {
        /// check root is not null
        if root == nil { return }
        var head = root
        /// add root and its all left children
        while(head != nil) {
            stack.append(head!)
            head = head?.left
        }
    }
    
    func next() -> Int {
        /// remove the last added element from stack
        let node = stack.removeLast()
        /// add right node and its all left children in stack
        addLeft(node.right)
        /// return the value of node which was removed
        return node.val
    }
    
    func hasNext() -> Bool {
        /// if stack is not empty than it has next
        return !stack.isEmpty
    }
}

/**
 * Your BSTIterator object will be instantiated and called as such:
 * let obj = BSTIterator(root)
 * let ret_1: Int = obj.next()
 * let ret_2: Bool = obj.hasNext()
 */