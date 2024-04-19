class Solution {
    func removeDuplicates(_ s: String, _ k: Int) -> String {
        var string = ""
        var stack:[Int] = []

        for char in s {
            var freq = 1
            /// if current char is same as last element, increase the freq
            if string.last == char {
                freq = stack.last! + 1
            }
            stack.append(freq)
            string.append(char)
            /// if freq reaches the k, remove the k elements from the stack n string
            if stack.last == k {
                for _ in 0..<k {
                    string.removeLast()
                    stack.removeLast()
                }
            }
        }

        return string        
    }
}