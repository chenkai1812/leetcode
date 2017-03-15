# leetcode

## Article
* [String][1]

## Code

### Sort String

```swift
var str = "bcadf"
let array = str.characters.sorted()
let key = String(array)
```

### Loop String

```swift
for i in haystack.characters.indices {
    var indexHaystack = i
    var indexNeedle = needle.startIndex
    
    while indexHaystack != haystack.endIndex && indexNeedle != needle.endIndex {
        if haystack[indexHaystack] != needle[indexNeedle] {
            break
        }
        indexHaystack = haystack.index(after: indexHaystack) // next index
        indexNeedle = needle.index(after: indexNeedle)
    }
    
    if indexNeedle == needle.endIndex {
        return haystack.distance(from: haystack.startIndex, to: i) // return index by Int type
    }
}
```

### Substring
```swift
let toIndex = first.index(first.startIndex, offsetBy: i - 1)
first[first.startIndex...toIndex]
```

### Array
```swift
// Allocate Space
var left: [Int] = Array(repeating: 0, count: nums.count)

// Reverse Order Visit
for i in (0...10).reversed()

// Index and Value
for (index, value) in nums.enumerated()

// Sort
struct aStruct {
    var value: Int
    var index: Int
}

for (index, value) in nums.enumerated() {
    let element = aStruct(value: value, index: index)
    a.append(element)
}

a = a.sorted { (lhs: aStruct, rhs: aStruct) -> Bool in
    return lhs.value <= rhs.value
}
```

## String
* 242. Valid Anagram - Hash Table or Array
* 28. Implement strStr() - Loop, Search
* 49. Group Anagrams - Anagrams + Hash 
* 14. Longest Common Prefix - Substring, Loop
* 3. Longest Substring Without Repeating Characters - Loop

## Array
* 27. Remove Element - two pointers
* 26. Remove Duplicates from Sorted Array - two pointers
* 88. Merge Sorted Array - two pointers, sort
* 1. Two Sum - Sort and two pointers or Hash
* 238. Product of Array Except Self - Extra Space
* 41. First Missing Positive - Index Based Sort
* 16. 3Sum Closest - Sort and 3 pointers
* 15. 3Sum - Sort or (Hash + Sort)
* 80. Remove Duplicates from Sorted Array II - Two Pointers
* 18. 4Sum - Two Pointers

## Binary Search
* 69. Sqrt(x)
* 35. Search Insert Position
* 162. Find Peak Element
* 278. First Bad Version
* 34. Search for a Range
* 74. Search a 2D Matrix
* 153. Find Minimum in Rotated Sorted Array
* 33. Search in Rotated Sorted Array

## Bit & Math
* 231. Power of Two
* 62. Unique Paths - DP


[1]:	https://oleb.net/blog/2016/08/swift-3-strings/
