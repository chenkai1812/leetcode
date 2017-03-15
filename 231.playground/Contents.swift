class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        if n <= 0 {
            return false
        }

        var count = 0
        var a = n
        for _ in 0..<32 {
            let bit = a & 1
            count += bit
            a = a >> 1
        }

        if count == 1 {
            return true
        }

        return false
    }
}

let s = Solution()

s.isPowerOfTwo(1)
s.isPowerOfTwo(2)
s.isPowerOfTwo(3)
