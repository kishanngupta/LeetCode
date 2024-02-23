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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var carry = 0
        var temp1 = l1
        var temp2 = l2
        var prev:ListNode? = nil

        while(temp1 != nil && temp2 != nil) {
            var sum = temp1!.val + temp2!.val + carry
            carry = 0
            if sum > 9 {
                carry = 1
                sum -= 10
            }
            
            temp1?.val = sum
            prev = temp1
            temp1 = temp1?.next
            temp2 = temp2?.next
        }
        
        while(temp1 != nil) {
            var sum = temp1!.val + carry
            carry = 0
            if sum > 9 {
                carry = 1
                sum -= 10
            }
            temp1?.val = sum
            prev = temp1
            temp1 = temp1?.next
        }

        while(temp2 != nil) {
            var sum = temp2!.val + carry
            carry = 0
            if sum > 9 {
                carry = 1
                sum -= 10
            }
            temp2?.val = sum
            prev?.next = temp2
            prev = prev?.next
            temp2 = temp2?.next
        }

        if carry == 1 {
            prev?.next = ListNode(1)
        }

        return l1
    }
}