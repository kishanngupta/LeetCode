class Solution {
    func sortColors(_ nums: inout [Int]) {
        var low = 0
        var medium = 0
        var high = nums.count-1

        while(medium <= high) {
            if nums[medium] == 0 {
                swap(low, medium)
                medium += 1
                low += 1
            } else if nums[medium] == 1 {
                medium += 1
            } else {
                swap(medium, high)
                high -= 1
            }
        }

        func swap(_ a: Int,_ b: Int) {
            let temp = nums[a]
            nums[a] = nums[b]
            nums[b] = temp
        }
    }

    
}