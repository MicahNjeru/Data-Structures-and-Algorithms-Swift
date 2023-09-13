import Foundation

/// Q1: Given a sorted array *nums*, remove the duplicates in-place such that duplicates appeared at most twice and return the new length.
/// Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
/// Example 1:
/// Given nums = [1, 1, 1, 2, 2, 3] ,
/// Your function should return length = 5, with the first five elements of nums being 1, 1, 2, 2 and 3 respectively. It doesn't matter what you leave beyond the returned length.
/// Example 2:
/// Given nums = [0, 0, 1, 1, 1, 1, 2, 3, 3] ,
/// Your function should return length = 7, with the first seven elements of nums being modified to 0, 0, 1, 1, 2, 3 and 3 respectively. It doesn't matter what values are set beyond the
/// returned length.
/// Solution:


func removeDups(_ arr: [Int]) -> Int {
    // We check if the input array count is more than or equal to 2, if not, ...
    // we return the array count since it will not contain more than 2 "unique-duplicates"
    if arr.count <= 2 { // 1
        return arr.count
    }
    
    // We convert the input array to a variable
    var arr = arr // 1
    
    // We initialize the index to 1 ...
    var index = 1 // 1
    for i in 2..<arr.count { // n
        // so that we can check if:
        // 1. The 2nd element in the array is not equal to the 1st element in the array ...
        //              OR
        // 2. The 3rd element in the array is not equal to the 2nd element in the array ...
        // if either is true, meaning there's a different element compared to it's former element, ...
        if arr[index] != arr[index - 1] || arr[i] != arr[index] {
            // we increment the index by 1 ...
            index += 1
            // and assign the array position at recently incremented index to the current element being looped over
            arr[index] = arr[i]
        }
        print("\(i) step: ", arr)
    }
    return index + 1 // 1
}


// Function test
print(removeDups([1, 1, 1, 2, 2, 3, 3]))
print(removeDups([0, 0, 1, 1, 1, 1, 2, 3, 3]))

// 1 + 1 + 1 + n + 1 = 4 + n
// Time complexity solution: n -> O(n)
