struct aStruct {
    var value: Int
    var index: Int
}

// Sort
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var a: [aStruct] = []
        
        for (index, value) in nums.enumerated() {
            let element = aStruct(value: value, index: index)
            a.append(element)
        }
        
        a = a.sorted { (lhs: aStruct, rhs: aStruct) -> Bool in
            return lhs.value <= rhs.value
        }
        
        var i = 0
        var j = a.count - 1
        
        while i < j {
            if a[i].value + a[j].value == target {
                return [a[i].index, a[j].index]
            } else if a[i].value + a[j].value > target {
                j -= 1
            } else {
                i += 1
            }
        }
        
        return [0, 0]
    }
}

// Hash
class Solution2 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var appear: [Int: [Int]] = [:]
        
        for (index, value) in nums.enumerated() {
            if appear[value] != nil {
                appear[value]?.append(index)
            } else {
                appear[value] = [index]
            }
        }
        
        for (index, value) in nums.enumerated() {
            let key = target - value
            if let appear = appear[key] {
                if let anotherIndex = appear.first {
                    if anotherIndex != index {
                        return [index, anotherIndex]
                    } else if appear.count > 1 {
                        return [index, appear.last!]
                    }
                }
            }
        }
        
        return [0, 0]
    }
}

let s = Solution2()
s.twoSum([2, 3, 11, 7], 9)
