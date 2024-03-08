class Solution {
    func numUniqueEmails(_ emails: [String]) -> Int {
        var set = Set<String>()

        for item in emails {
            var email: String = ""
            var isPlus = false
            for (index,char) in item.enumerated() {
                if char == "@" {
                    let domaim = item.suffix(item.count-index)
                    email += String(domaim)
                    break
                } else if char == "." {
                    continue
                } else if isPlus || char == "+" {
                    isPlus = true
                    continue
                }
               email += String(char)
            }
            set.insert(email)
        }

        return set.count
    }
}