class Solution {
    func getCommon(_ nums1: [Int], _ nums2: [Int]) -> Int {
        var output = -1
        var i = 0
        var j = 0

        while(i<nums1.count && j<nums2.count) {
            if nums1[i] == nums2[j] {
                output = nums1[i]
                break
            } else if nums1[i] < nums2[j] {
                i+=1
            } else {
                j+=1
            }
        }

        return output
    }
}