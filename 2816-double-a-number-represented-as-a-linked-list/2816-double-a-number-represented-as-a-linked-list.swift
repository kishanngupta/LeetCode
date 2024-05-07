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
    func doubleIt(_ head: ListNode?) -> ListNode? {
        var stack: [ListNode] = []
        var curr = head

        while curr != nil {
            stack.append(curr!)
            curr = curr?.next
        }

        var carry = 0
        while !stack.isEmpty {
            curr = stack.removeLast()
            var val = (curr!.val*2) + carry   
            carry = 0

            if val > 9 {
                carry = 1
                val = val%10
            }
            curr?.val = val
        }

        if carry == 1 {
            curr = ListNode(1, head)
        }

        return curr
    }
}