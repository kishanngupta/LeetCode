class Solution {
    func customSortString(_ order: String, _ s: String) -> String {
        var hash: [Character: Int] = [:]
        var result = ""

        for char in order { 
            hash[char] = 0 
        }

        for char in s {
            if var value = hash[char] {
                hash[char] = (value+1)
            }
        }

        for char in order {
            for _ in 0..<hash[char]! {
                result += String(char)
            }
        }

        for char in s {
            if hash[char] == nil {
                result += String(char)
            }
        }

        return result
    }
}