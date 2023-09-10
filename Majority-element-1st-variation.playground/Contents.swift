import Foundation

/// Given an array of size n, find the majority element. The majority element is the element that appears more than I n/2 . times.
/// You may assume that the array is non-empty and the majority element always exist in the array.
/// Example 1:
/// Input: [3,2,3]
/// Output: 3
/// Example 2:
/// Input: [2,2,1,1,1,2,2]
/// Output: 2

func majority(_ arr: [Int]) -> Int {
    // Check if array is empty
    guard arr.count > 0 else { return 0 }
    
    // Assign first value of the array to a variable
    var majorityItem = arr[0]
    
    // Initialize the counter to 0
    var counter = 0
    
    // Loop over the array
    for item in arr {
        // Check if the first looped element is the same as the first element in the array
        if item == majorityItem {
            // If first looped item is same as the first element in the array increment counter
            counter += 1
        } else {
            // If they don't match, decrement the counter
            // It won't decrement on the first iteration because, the first element being looped over -
            // will always be the same as the first element in the array it's being compared to
            counter -= 1
        }
        // When the counter has met equal number of item counts, the counter will be zero -
        // if two elements appear the same number of times, the counter will be reset to 0
        // if so, then...
        if counter == 0 {
            // we assign the current element as the majorityItem to be returned -
            majorityItem = item
            // and we increment the counter by 1. We do this because, we want to count that element...
            // as the first just as we did with the first if statement
            counter = 1
        }
    }
    // we return the last element that was counted as the majority because it equaled (reset the counter to 0)
    // the first element that was counted and then initialized the counter to 1
    return majorityItem
}

// Function test
majority([2, 2, 1, 1, 1, 2, 2])
majority([3, 2, 3])
majority([3, 2, 3, 2, 3])
majority([3, 2, 3, 2, 2])
majority([3, 2, 3, 2, 3, 2, 2])
