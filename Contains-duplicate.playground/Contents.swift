import Foundation



/// Q1: Given an array of integers, find if the array contains any duplicates. Your function should return true if any value appears at least twice in the array,
/// and it should return false if every element is distinct.
/// Example 1:
/// Input: [1, 2, 3, 1]
/// Output: true
/// Example 2:
/// Input: [1, 2, 3, 4]
/// Output: false
/// Example 3:
/// Input: [1, 1, 1, 3, 3, 4, 3, 2, 4, 2]
/// Output: true
///
/// Solution: We use learnings the previous challenges, specifically the dictionary map technique.

func containsDup(_ arr: [Int]) -> Bool {
    // We create an empty dictionary
    var dict = [Int: Int]() // 1
    
    // We loop over the array
    for item in arr { // n
        // checking if the item is already in the dictionary, ...
        // if it is, we return true and exit the function otherwise ...
        if dict[item] != nil {
            return true
            // we add it and assign a value of 1
        } else {
            dict[item] = 1
        }
    }
    return false // 1
}


// Function test
print(containsDup([1, 2, 3, 1]))
print(containsDup([1, 2, 3, 4]))
print(containsDup([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]))


// 1 + 1 + n = 2 + n
// Time complexity solution: n -> O(n)
