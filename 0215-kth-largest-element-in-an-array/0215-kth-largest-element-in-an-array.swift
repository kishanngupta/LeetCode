class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var nums = nums
        quckSort(&nums, 0, nums.count-1)
        return nums[nums.count-k]
    }

    func quckSort(_ nums: inout [Int], _ start: Int, _ end: Int) {
        if start >= end {
            return
        }

        var j = start-1
        for i in start...end {
            if nums[i] < nums[end] || i == end {
                j+=1
                let temp = nums[i]
                nums[i] = nums[j]
                nums[j] = temp    
            }
        }
        
        quckSort(&nums, start, j-1)
        quckSort(&nums, j+1, end)        
    }
}