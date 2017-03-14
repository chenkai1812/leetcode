class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var k = m + n - 1
        var i = m - 1
        var j = n - 1
        
        while i >= 0 && j >= 0 {
            if nums2[j] >= nums1[i] {
                nums1[k] = nums2[j]
                j -= 1
            } else {
                nums1[k] = nums1[i]
                i -= 1
            }
            k -= 1
        }
        
        if j >= 0 {
            for t in 0...j {
                nums1[t] = nums2[t]
            }
        }
    }
}

let s = Solution()
var num1 = [0, 3, 3, 23]
var num2 = [2, 3, 5, 7]
s.merge(&num1, 0, num2, 4)
num1