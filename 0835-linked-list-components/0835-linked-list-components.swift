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
    func numComponents(_ head: ListNode?, _ nums: [Int]) -> Int {
        var hash: [Int: Int] = [:]
        var head = head
        var count = 0
        var found = false
        
        for key in nums {
            hash[key, default: 0] += 1
        }

        while head != nil {

            if found == false && hash[head!.val] != nil {
                count += 1
                found = true
            } else if hash[head!.val] == nil {
                found = false
            }

            head = head?.next

        }

        return count
    }
}