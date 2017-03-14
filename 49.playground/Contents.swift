//: Playground - noun: a place where people can play

// String
// Anagrams + BSearch + Hash
/* Sort String
 var str = "bcadf"
 let array = str.characters.sorted()
 let key = String(array)
 */


class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict: [String: [String]] = [:]
        for str in strs {
            let array = str.characters.sorted()
            let key = String(array)
            
            if dict[key] == nil {
                dict[key] = []
            }

            dict[key]?.append(str)
        }
        
        var ret: [[String]] = []
        
        for (_, element) in dict {
            ret.append(element)
        }
        
        return ret
    }
}

let s = Solution()
s.groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"])
s.groupAnagrams([" ", "b", ""])

for i in haystack.characters.indices {
    var indexHaystack = i
    var indexNeedle = needle.startIndex
    
    while indexHaystack != haystack.endIndex && indexNeedle != needle.endIndex {
        if haystack[indexHaystack] != needle[indexNeedle] {
            break
        }
        indexHaystack = haystack.index(after: indexHaystack)
        indexNeedle = needle.index(after: indexNeedle)
    }
    
    if indexNeedle == needle.endIndex {
        return haystack.distance(from: haystack.startIndex, to: i)
    }
    
    if indexHaystack == haystack.endIndex {
        return -1
    }
}

//var a = "bcadfadsfwerwersds"
//var b = Array(a.characters.sorted())
//var c = String(b)
