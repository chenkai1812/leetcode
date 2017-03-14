//: Playground - noun: a place where people can play

// 242. Valid Anagram
// https://leetcode.com/problems/valid-anagram/?tab=Description

// String
// Hash Table
// Array Table

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.characters.count != t.characters.count {
            return false
        }
        
        var counts: [Character : Int] = [:]
        for c in s.characters {
            if let count = counts[c] {
                counts[c] = count + 1
            } else {
                counts[c] = 1
            }
        }
        
        for c in t.characters {
            if let count = counts[c] {
                counts[c] = count - 1
                if counts[c]! < 0 {
                    return false
                }
            } else {
                return false
            }
        }
        
        return true
    }
}

let a = Solution()
a.isAnagram("aa", "aa")
a.isAnagram("ab", "ba")
a.isAnagram("ac", "cb")
a.isAnagram("", "a")
a.isAnagram("abc", "cba")

