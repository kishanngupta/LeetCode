class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var prefixProdut = 1
        var suffixProduct = 1
        var result: [Int] = []

        for num in nums {
            result.append(prefixProdut)
            prefixProdut *= num
        }

        for i in (0..<nums.count).reversed() {
            result[i] *= suffixProduct
            suffixProduct *= nums[i]

        }

        return result
    }
}