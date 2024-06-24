class Solution {
    func minKBitFlips(_ A: [Int], _ K: Int) -> Int {
    let length = A.count
    var flippedCount = 0  // To keep track of how many times we have flipped
    var flipOperations = 0  // To store the total number of flip operations performed
    var isFlipped = [Int](repeating: 0, count: length)  // Array to mark the positions of flips

    for i in 0..<length {
        // If the current index is beyond the Kth element, remove the effect of the flip done K elements ago
        if i >= K {
            flippedCount ^= isFlipped[i - K]
        }

        // If the flipped state matches the current element, we need to flip
        if flippedCount == A[i] {
            // If flipping K elements starting from the current index exceeds the array bounds, return -1
            if i + K > length {
                return -1
            }
            // Mark the current index as flipped
            isFlipped[i] = 1
            // Update the flipped count
            flippedCount ^= 1
            // Increment the flip operations counter
            flipOperations += 1
        }
    }
    return flipOperations
}
}