class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count <= 1 {
            return nums.count
        }
        
        var size = 1
        
        for i in 1..<nums.count {
            if nums[i] == nums[size-1] {
                continue
            }
            
            nums[size] = nums[i]
            size += 1
        }
        
        return size
    }
}

let s = Solution()
var a = [1,1,2]
s.removeDuplicates(&a)
a