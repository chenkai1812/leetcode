// Sort
class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var a = nums.sorted()
        var ret: [[Int]] = []
        
        for i in 0..<nums.count {
            if i != 0 && a[i] == a[i-1] {
                continue
            }
            
            var j = i + 1
            var k = nums.count - 1
            
            while j < k {
                let sum = a[i] + a[j] + a[k]
                
                if sum == 0 {
                    ret.append([a[i], a[j], a[k]])
                    j += 1
                } else if sum < 0 {
                    j += 1
                } else {
                    k -= 1
                }
                
                if sum == 0 {
                    while j < k {
                        var flag = false
                        if j != 0 && a[j] == a[j-1] {
                            j += 1
                            flag = true
                        }
                        
                        if (k != nums.count - 1) && a[k] == a[k+1] {
                            k -= 1
                            flag = true
                        }
                        
                        if (!flag) {
                            break
                        }
                    }
                }
            }
        }
        
        return ret
    }
}

// Hash
class Solution2 {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var appear: [Int: [Int]] = [:]
        
        let a = nums.sorted()
        
        for (index, value) in a.enumerated() {
            if appear[value] != nil {
                appear[value]?.append(index)
            } else {
                appear[value] = [index]
            }
        }
        
        var ret: [[Int]] = []
        
        for i in 0..<a.count {
            if i != 0 && a[i] == a[i-1] {
                continue
            }
            
            for j in i+1..<a.count {
                if j != i+1 && a[j] == a[j-1] {
                    continue
                }
                
                let key = 0 - a[i] - a[j]
                
                if let appear = appear[key] {
                    for index in appear {
                        if index > i && index > j {
                            ret.append([a[i], a[j], a[index]])
                            break
                        }
                    }
                }
            }
        }
        
        return ret
    }
}


let s = Solution2()
s.threeSum([-1, 0, 1, 2, -1, -4])
s.threeSum([0,0,0,0])