/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func removeNodes(_ head: ListNode?) -> ListNode? {
        var stack: [ListNode] = []
        var root = head

        while(root != nil) {
            if stack.isEmpty {
                stack.append(root!)
            } else {
                while( !stack.isEmpty && stack.last!.val < root!.val ) {
                    stack.removeLast()
                    stack.last?.next = nil
                }
                stack.last?.next = root
                stack.append(root!)
            }
            root = root?.next
        }
        return stack.first
    }
}