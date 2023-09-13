import Foundation

/// Q1: Given a sorted array nums, remove the duplicates in-place such that each element appear only once and return the new length.
/// Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
/// Example 1:
/// Given nums = [1, 1, 2] ,
/// Your function should return length = 2, with the first two elements of nums being 1  and  2 respectively. It doesn't matter what you leave beyond the returned length.
/// Example 2:
/// Given nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4] ,
/// Your function should return length = 5, with the first five elements of nums being modified to 0, 1, 2, 3, and 4 respectively. It doesn't matter what values are set beyond the returned length.
/// Solution: Main idea is to loop through the array and keep index count for unique elements and move unique elements to the left.


func removeDups(_ arr: [Int]) -> Int {
    // We check if the has zero elements, if so we return 0
    if arr.count <= 0 { // 1
        return 0
    }
    // We convert the input array to a variable
    var arr = arr // 1
    
    // We set the index to 0 for the first iteration
    var index = 0 // 1
    
    // We loop over the variable array (previously converted from a constant) ...
    for item in arr { // n
        // Optional print statements for checking progress/debugging
        print("arr: ", arr)
        print("item: ", item)
        print("index: ", index)
        
        // checking whether the item being currently looped over is not equal to the current element being looped over ...
        // in the array
        if item != arr[index] {
            // If it's not the same, we increment our index counter by 1 ...
            index += 1
            // and assign the item to the now newly incremented array-index position
            arr[index] = item
            
            // Optional print statements for checking progress/debugging
            print("--- index: ", index)
            print("--- arr[index]: ", arr[index])
        }
        // Optional print statement for checking progress/debugging
        print("arr: ", arr)
    }
    
    // We return the index value plus 1 because array indexes usually start at 0 and we need to account for that
    return index + 1 // 1
}

// Function test
print(removeDups([1, 1, 2]))
print(removeDups([0, 0, 1, 1, 1, 2, 2, 3, 3, 4]))

// 1 + 1 + 1 + n + 1 = 4 + n
// Time complexity solution: n -> O(n)
