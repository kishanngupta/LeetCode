class Solution {
    func maxUncrossedLines(_ nums1: [Int], _ nums2: [Int]) -> Int {

        var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: nums2.count), count: nums1.count)

        func lines(_ i: Int,_ j: Int) -> Int {
            if i<0 || j<0 {
                return 0
            } else if dp[i][j] != -1 {
                return dp[i][j]
            }

            if nums1[i] == nums2[j] {
                dp[i][j] = 1 + lines(i-1, j-1)
                return dp[i][j]
            } else {
                let first = lines(i-1, j)
                let second = lines(i,j-1)
                dp[i][j] = max(first, second)
                return dp[i][j]
            }
        }

        return lines(nums1.count-1, nums2.count-1)
    }
}