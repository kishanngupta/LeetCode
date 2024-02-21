class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var k = m+n-1
        var m = m-1
        var n = n-1
        
        
        while(m>=0 && n>=0) {
            if nums1[m] >= nums2[n] {
                nums1[k] = nums1[m]
                m-=1
                k-=1
            } else {
                nums1[k] = nums2[n]
                n-=1
                k-=1
            }
        }
        
        if m>=0 {
            for i in 0...m {
                nums1[k] = nums1[m]
                m-=1
                k-=1
            }
        }
        
        if n>=0 {
            for i in 0...n {
                nums1[k] = nums2[n]
                n-=1
                k-=1
            }
        }
        
    }
}