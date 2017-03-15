class Solution {
    func trailingZeroes(_ n: Int) -> Int {
        var count = 0
        var a = n
        while a != 0 {
            count += a / 5
            a /= 5
        }
        return count
    }
}

let s = Solution()
s.trailingZeroes(11)