class Solution {
    func mySqrt(_ x: Int) -> Int {
        if x == 0 || x == 1 {
            return x
        }

        return sqrt(beg: 1, end: x, target: x)
    }

    func sqrt(beg: Int, end: Int, target: Int) -> Int {
        if beg > end {
            return end
        }

        let mid = beg + (end - beg) / 2
        let res = mid * mid

        if res == target {
            return mid
        }

        if res < target {
            return sqrt(beg: mid + 1, end: end, target: target)
        } else {
            return sqrt(beg: beg, end: mid - 1, target: target)
        }
    }
}

let s = Solution()
s.mySqrt(4)
s.mySqrt(25)
s.mySqrt(81)
s.mySqrt(2)
s.mySqrt(10)
s.mySqrt(3)
s.mySqrt(5)