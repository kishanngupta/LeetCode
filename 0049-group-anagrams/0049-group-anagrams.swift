class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        let aAscii: UInt8 = ("a" as Character).asciiValue!
        var hash: [String: [String]] = [:]

        for str in strs {
            var list: [String] = Array(repeating: "0", count: 26)
            for char in str {
                let index = Int(char.asciiValue!-aAscii)
                list[index] = String(Int(list[index])! + 1)
            }
            hash[list.joined(separator: "#"), default: []] += [str]
        }
        return Array(hash.values)
    }
}