class Solution {
    func subarraysDivByK(_ nums: [Int], _ k: Int) -> Int {
        // Initialize the result variable to store the count of subarrays
        var result = 0
        // Variable to store the running prefix sum
        var prefixSum = 0
        // Array to store the frequency of each modulo value
        var frequency = Array(repeating: 0, count: k)
        // Initialize the frequency of modulo 0 as 1 (to handle subarrays starting from index 0)
        frequency[0] = 1
        
        // Iterate through each number in the input array
        for num in nums {
            // Update the prefix sum and calculate the modulo k value
            prefixSum = ((prefixSum + num) % k + k) % k
            // Add the frequency of the current prefix sum modulo value to the result
            result += frequency[prefixSum]
            // Increment the frequency of the current prefix sum modulo value
            frequency[prefixSum] += 1
        }
        
        // Return the total count of subarrays whose sum is divisible by k
        return result
    }
}