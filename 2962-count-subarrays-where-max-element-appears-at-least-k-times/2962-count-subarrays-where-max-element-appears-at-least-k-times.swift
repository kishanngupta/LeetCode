class Solution {
    func countSubarrays(_ nums: [Int], _ k: Int) -> Int {
        let maxElement = nums.max() ?? 0
        
        var cnt = 0 
        var l = 0
        
        // record how many maxElements now in window (subarray) ...
        var maxCnt = 0

        for r in 0..<nums.count {
            if nums[r] == maxElement {
                maxCnt += 1
            }

            // keep 
            while maxCnt == k {
                if nums[l] == maxElement {
                    maxCnt -= 1
                }
                l += 1
            }
            
            // end with r, all subarray start with [0...l-1] is valid one
            cnt += l 
        }

        return cnt
    }
}