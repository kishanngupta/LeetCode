class Solution {
    func balanceBST(_ root: TreeNode?) -> TreeNode? {
        root.flatMap { balanceBST(of: $0.ordered[...]) }
    }

    func balanceBST(of slice: ArraySlice<Int>) -> TreeNode? {
        guard !slice.isEmpty else { return nil }

        let m = (slice.startIndex + slice.endIndex) / 2
        return TreeNode(slice[m], balanceBST(of: slice[..<m]), balanceBST(of: slice[(m + 1)...]))
    }
}

extension TreeNode {
    var ordered: [Int] {
        (left?.ordered ?? []) + [val] + (right?.ordered ?? [])
    }
}