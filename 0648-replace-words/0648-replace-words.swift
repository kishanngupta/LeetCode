class Solution {
    func replaceWords(_ dictionary: [String], _ sentence: String) -> String {
        var result = ""
        var dictionary = dictionary.sorted(by: {$0.count < $1.count })
        var sentenceList = sentence.components(separatedBy: " ")

        for word in sentenceList {
            var isFound = false
            for root in dictionary {
                if word.hasPrefix(root) {
                    isFound = true
                    result.append(result.isEmpty ? root : " \(root)")
                    break
                }
            }
            if !isFound {
                result.append(result.isEmpty ? word : " \(word)")
            }
        }

        return result
    }
}