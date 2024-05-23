class Solution {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var result: [[Int]] = []

        func find(_ index: Int, _ kk: Int,_ path: [Int]) {
            if kk == k {
                result.append(path)
                return
            } else if index == n {
                return
            }

            find(index+1, kk, path)
            find(index+1, kk+1, path + [index+1])
        }

        find(0,0,[])

        return result
    }
}