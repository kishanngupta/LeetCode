class Solution {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var result: [[Int]] = []
        var path: [Int] = []
        var candidates = candidates.sorted()

        find(0,target)

        func find(_ i: Int,_ sum: Int) {
            if sum == 0 {
                result.append(path)
                return
            } else if i == candidates.count || sum < 0 {
                return
            }

            for index in i..<candidates.count {
                if index > i && candidates[index] == candidates[index-1] {
                    continue
                } else if sum < candidates[index] {
                    break
                }

                path.append(candidates[index])
                find(index+1, sum-candidates[index])
                path.removeLast()                
            }
        }  
        return result  
    }
}