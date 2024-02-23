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
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        if head?.next == nil { return head }

        var curr = head
        var length = 1

        while(curr?.next != nil) {
            curr = curr?.next
            length += 1
        }
        var k = k%length
        if k == 0 { return head }
        curr?.next = head

        for _ in 0..<(length-k) {
            curr = curr?.next
        }
        var newHead = curr?.next
        curr?.next = nil
        return newHead
    }
}