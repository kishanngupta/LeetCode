class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var result: [[Int]] = []
        var path: [Int] = []

        find(0,0)
        
        func find(_ index: Int,_ sum: Int) {
            if sum == target {
                result.append(path)
                return
            } else if index == candidates.count || sum > target {
                return
            }

            path.append(candidates[index])
            find(index, sum+candidates[index])
            path.removeLast()
            
            find(index+1, sum)
        } 
        return result   
    }
}