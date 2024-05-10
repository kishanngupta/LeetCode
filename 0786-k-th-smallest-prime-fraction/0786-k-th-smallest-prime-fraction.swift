class Solution {
    func kthSmallestPrimeFraction(_ arr: [Int], _ k: Int) -> [Int] {
        var fraction: [[Int]] = []

        for i in 0..<arr.count {
            for j in i+1..<arr.count {
                fraction.append([arr[i],arr[j]])
            }
        }

        fraction.sort {
            return Double($0[0])/Double($0[1]) < Double($1[0])/Double($1[1])
        }
        return fraction[k-1]
    }
}