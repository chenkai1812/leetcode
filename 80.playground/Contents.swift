class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count <= 1 {
            return nums.count
        }
        
        var size = 1
        var allowOneMore = true
        for i in 1..<nums.count {
            if nums[i] == nums[size-1] {
                if allowOneMore {
                    nums[size] = nums[i]
                    size += 1
                    allowOneMore = false
                }
            } else {
                nums[size] = nums[i]
                size += 1
                allowOneMore = true
            }
        }
        
        return size
    }
}

let s = Solution()
var a = [1, 1, 1, 2, 2, 3]
s.removeDuplicates(&a)
a