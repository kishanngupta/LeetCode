class Solution {
    func peakIndexInMountainArray(_ arr: [Int]) -> Int {
                
        var left = 0
        var right = arr.count-1
        
        while left < right {
            let mid = (left+right)/2
            
            if arr[mid] < arr[mid+1] {
                left = mid+1
            } else {
                right = mid
            }
        }
        
        return right
    }
}