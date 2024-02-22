/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        var tempA = headA
        var tempB = headB

        while !(tempA === tempB) {
            tempA = tempA == nil ? headB : tempA?.next
            tempB = tempB == nil ? headA : tempB?.next
        }

        return tempA
    }
}