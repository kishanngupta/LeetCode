import Collections

class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        var heap = Heap(nums)
        var result: [Int] = []

        while !heap.isEmpty {
            result.append(heap.removeMin())
        }
        
        return result
    }
}