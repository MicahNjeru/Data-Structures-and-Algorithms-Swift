import Foundation

/// Q1: Max Consecutive Ones
/// Given a binary array, find the maximum number of consecutive 1s in this array. Example:
/// Input: [1, 1, 0, 1, 1, 1]
/// Output: 3
/// Solution: The first two digits or the last three digits are consecutive 1s. The maximum number of consecutive 1s is 3.

func maxConsOne(_ arr: [Int]) -> Int {
    var localCount = 0 // 1
    var globalCount = 0 // 1
    
    for item in arr { // n
        if item == 1 {
            localCount += 1 //n
            globalCount = max(localCount, globalCount) // n
        } else {
            localCount = 0 // n
        }
    }
    
    return globalCount // 1
}

maxConsOne([1, 1, 0, 1, 1, 1])
maxConsOne([1, 1, 0, 1, 1])
maxConsOne([0, 0, 0, 0, 0])
maxConsOne([1, 1, 1, 1, 1, 1])
maxConsOne([0, 1, 1, 1, 1, 1])


// 1 + 1 + n + n + n + 1 = 3 + 3n
// Time complexity solution: 3n -> O(n)
