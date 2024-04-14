class Solution {
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        var queue: [TreeNode?] = [root]
        var sum = 0

        while !queue.isEmpty {
            let node = queue.removeFirst()

            if let left = node?.left {
                if left.left == nil && left.right == nil {
                    sum += left.val
                } else {
                    queue.append(left)
                }
            }

            if let right = node?.right {
                queue.append(right)
            }
        }

        return sum
    }
}