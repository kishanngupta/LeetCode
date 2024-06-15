class Codec {
    var hash: [String: String] = [:]
    var count = 0
    var base = "https//leetcode/"
    // Encodes a URL to a shortened URL.
    func encode(_ longUrl: String) -> String {
        let shortUrl = "\(base)\(count)"
        hash[shortUrl] = longUrl
        count += 1
        return shortUrl
    }
    
    // Decodes a shortened URL to its original URL.
    func decode(_ shortUrl: String) -> String {
        return hash[shortUrl]!
    }
}

/**
 * Your Codec object will be instantiated and called as such:
 * let obj = Codec()
 * val s = obj.encode(longUrl)
 * let ans = obj.decode(s)
*/