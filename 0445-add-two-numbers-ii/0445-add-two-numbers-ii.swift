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
        var stack1: [ListNode] = []
        var stack2: [ListNode] = []

        var head1 = l1
        var head2 = l2

        while head1 != nil {
            stack1.append(head1!)
            head1 = head1?.next
        }

        while head2 != nil {
            stack2.append(head2!)
            head2 = head2?.next
        }

        var carry = 0
        while !stack1.isEmpty && !stack2.isEmpty {
            let node1 = stack1.removeLast()
            let node2 = stack2.removeLast()
            var sum = node1.val + node2.val + carry
            carry = 0
            if sum > 9 {
                sum = sum%10
                carry = 1
            }
            node1.val = sum
        }

        while !stack1.isEmpty {
            let node1 = stack1.removeLast()
            var sum = node1.val + carry
            carry = 0
            if sum > 9 {
                sum = sum%10
                carry = 1
            }
            node1.val = sum
        }

        var isHead1 = true
        stack2.last?.next = l1
        while !stack2.isEmpty {
            isHead1 = false
            let node2 = stack2.removeLast()
            var sum = node2.val + carry
            carry = 0
            if sum > 9 {
                sum = sum%10
                carry = 1
            }
            node2.val = sum
        }

        if carry == 1 {
            let node = ListNode(1,isHead1 ? l1 : l2)
            return node
        }

        return isHead1 ? l1 : l2
        
        
        
    }
}