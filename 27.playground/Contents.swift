//: Playground - noun: a place where people can play

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var size = 0
        
        for i in 0..<nums.count {
            if nums[i] != val {
                nums[size] = nums[i]
                size += 1
            }
        }
        
        return size
    }
}

let s = Solution()
var a = [0,4,4,0,0,2,4,4]
s.removeElement(&a, 4)
a
