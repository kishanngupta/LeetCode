class Solution {
    func deckRevealedIncreasing(_ deck: [Int]) -> [Int] {
        let sortedDeck = deck.sorted(by: >)
        var queue = [Int]()
        for card in sortedDeck {
            if let lastCard = queue.popLast() {
                queue.insert(lastCard, at: 0)
            }
            queue.insert(card, at: 0)
        }
        return queue
    }
}

// class Solution {
//     func deckRevealedIncreasing(_ deck: [Int]) -> [Int] {

//         var deck = deck.sorted(by: >)
//         var queue : [Int] = [deck.removeFirst()]

//         for card in deck {
//             queue.insert(queue.popLast()!, at: 0)
//             queue.insert(card, at: 0)
//         }
        
//         return queue
//     }
// }