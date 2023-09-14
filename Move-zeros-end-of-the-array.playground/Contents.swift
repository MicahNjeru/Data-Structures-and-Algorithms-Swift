import Foundation

/// Q1: Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
/// Example:
/// Input: [0, 1, 0, 3, 12]
/// Output: [1, 3, 12, 0, 0]
/// Note:
/// 1. You must do this in-place without making a copy of the array.
/// 2. Minimize the total number of operations.
/// Solution:

func moveZero(_ arr: [Int]) -> [Int] {
    // We reassign the input array to a variable
    var arr = arr // 1
    
    // We set an index counter for keeping track of last modified element in the array
    var index = 0 // 1
    
    // We loop over the array ...
    for item in arr { // n
        // checking if the item being looped over is not-equal to zero, if true ...
        if item != 0 {
            // we assign the item to the current index position (we move it to the latest
            // number in the counter) and then ...
            arr[index] = item
            // we increment the counter
            index += 1
        }
    }
    // We loop over the array starting from the index mark ...
    for i in index..<arr.count { // n
        // and assign zero to all elements up to the count of the array
        arr[i] = 0
    }
    // We return the array 
    return arr // 1
}

// Function test
print(moveZero([0, 1, 0, 3, 12]))
print(moveZero([1, 3, 12, 0, 0]))


// 1 + 1 + n + n + 1 =3 + 2n
// Time complexity solution: 2n -> O(n)
