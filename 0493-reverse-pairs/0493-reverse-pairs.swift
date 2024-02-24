class Solution {
    var count = 0
    func reversePairs(_ nums: [Int]) -> Int {
        var nums = nums
        mergeSort(&nums,0,nums.count-1)
        return count
    }

    private func countNumber(_ nums: inout [Int],_ low: Int,_ mid: Int,_ high: Int) {
        var right = mid+1
        for i in low...mid {
            while( right<=high && nums[i] > 2*nums[right] ) {
                right += 1
            }
            count += right - (mid+1)
        }
    }

    private func mergeSort(_ nums: inout [Int],_ low:Int,_ high: Int) {
        if low < high {
            let mid  = (low+high)/2
            mergeSort(&nums, low, mid)
            mergeSort(&nums, mid+1, high)
            countNumber(&nums, low, mid, high)
            merge(&nums, low, mid, high)
        }
    }

    private func merge(_ nums: inout [Int],_ low: Int,_ mid: Int, _ high: Int) {
        
        var arr: [Int] = []
        var left = low
        var right = mid+1
        
         while ( left<=mid && right<=high ) {
            if nums[left] <= nums[right] {
                arr.append(nums[left])
                left += 1
            } else {
                arr.append(nums[right])
                right += 1
            }
         }

         while(left <= mid) {
            arr.append(nums[left])
            left += 1
         }

         while(right <= high) {
            arr.append(nums[right])
            right += 1
         }

        for i in low...high {
            nums[i] = arr[i-low]
        }
    }
}