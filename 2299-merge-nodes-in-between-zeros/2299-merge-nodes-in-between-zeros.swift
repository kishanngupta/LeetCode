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
    func mergeNodes(_ head: ListNode?) -> ListNode? {
        var head = head
        var root = head
        var temp = head?.next

        while temp != nil {
            head?.val += temp!.val

            if temp!.val == 0 && temp?.next != nil {
                head = head?.next
                head?.val = 0
            }
            temp = temp?.next
        }

        head?.next = nil

        return root
    }
}