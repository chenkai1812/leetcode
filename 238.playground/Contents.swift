class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var left: [Int] = Array(repeating: 0, count: nums.count)
        var right: [Int] = Array(repeating: 0, count: nums.count)
        left[0] = nums[0]
        right[nums.count-1] = nums[nums.count-1]
        
        for i in 1..<nums.count {
            left[i] = left[i-1] * nums[i]
        }
        
        let size = nums.count - 2
        for i in (0...size).reversed() {
            right[i] = nums[i] * right[i+1]
        }
        
        var ret: [Int] = Array(repeating: 0, count: nums.count)
        for i in 0..<nums.count {
            if i == 0 {
                ret[i] = right[i+1]
            } else if i == nums.count - 1 {
                ret[i] = left[i-1]
            } else {
                ret[i] = left[i-1] * right[i+1]
            }
        }
        
        return ret
    }
}

let s = Solution()
s.productExceptSelf([1,2,3,4])
s.productExceptSelf([1, 2])
