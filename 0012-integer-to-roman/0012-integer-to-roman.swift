class Solution {
    func intToRoman(_ num: Int) -> String {
        var roman = ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"]
        var value = [1000, 900, 500, 400, 100, 90,50,40,10,9,5,4,1]

        var num = num
        var result = ""

        for (index, item) in value.enumerated() {
            while(num >= item) {
                num -= item
                result += roman[index]
            }
        }


        return result
    }
}