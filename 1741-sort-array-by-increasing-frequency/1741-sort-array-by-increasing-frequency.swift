class Solution {
    func frequencySort(_ nums: [Int]) -> [Int] {
        var frequencyDict = [Int: Int]()
        for num in nums {
            frequencyDict[num, default: 0] += 1
        }
        let sortedArray = nums.sorted { (a,b) -> Bool in 
        let freqa = frequencyDict[a]
        let freqb = frequencyDict[b]
        if let freqa, let freqb, freqa != freqb {
            return freqa < freqb 
        } else {
            return a > b
        }
        }
        return sortedArray
    }
}