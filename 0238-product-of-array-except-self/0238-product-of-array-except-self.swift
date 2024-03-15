class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var prefix:[Int] = nums
        var postfix: [Int] = nums
        var output: [Int] = []
        let count = nums.count

        for i in 0..<count {
            if i != 0 {
                prefix[i] = prefix[i]*prefix[i-1]
            }

            if count-i-1 != count-1 {
                postfix[count-i-1] = postfix[count-i-1] * postfix[count-i]
            }
        }

        for i in 0..<count {
            if i == 0 {
                output.append(postfix[i+1])
            } else if i == count-1 {
                output.append(prefix[i-1])
            } else {
                output.append(prefix[i-1]*postfix[i+1])
            }
        }
        return output
    }
}