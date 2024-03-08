class Solution {
    func numUniqueEmails(_ emails: [String]) -> Int {
        var set = Set<String>()
        
        for email in emails {
            let split = email.components(separatedBy: "@")
            let localName = split[0].components(separatedBy: "+").first!
            let filtername = localName.components(separatedBy: ".").joined()
            let newEmail = filtername+"@"+split.last!
            set.insert(newEmail)
        }
        return set.count
    }
}