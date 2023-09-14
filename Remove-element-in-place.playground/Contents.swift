import Cocoa

/// Q1:Given an array nums and a value val, remove all instances of that value in-place and return the new length.
/// Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
/// The order of elements can be changed. It doesn't matter what you leave beyond the new length.
/// Example 1:
/// Given nums = [3, 2, 2, 3], val = 3,
/// Your function should return length = 2, with the first two elements of nums being 2.
/// It doesn't matter what you leave beyond the returned length.
/// Example 2:
/// Given nums = [0, 1, 2, 2, 3, 0, 4, 2], val = 2,
/// Your function should return length = 5, with the first five elements of nums containing 0, 1, 3, 0, and 4.
///
/// Note that the order of those five elements can be arbitrary. It doesn't matter what values are set beyond the returned length.
/// Solution: This is similar to move zeros problem


func removeElement(_ arr: [Int], _ val: Int) -> Int {
    // We assign the input array to a variable
    var arr = arr // 1
    // We create an index and initialize it to zero
    var index = 0 // 1
    
    // We loop over the array ...
    for item in arr { // n
        // checking if the item being looped is not-equal to the value of focus ...
        // if it's not-equal to the input value ...
        if item != val {
            // we move the item to the front of the array and ...
            arr[index] = item
            // increment the index by 1
            index += 1
        }
    }
    // We assign the last value to a result variable and then ...
    let result = index // 1
    // loop over the array starting from the last index value up to the length of the array/array count and ...
    for i in index..<arr.count { // n
        // insert the input value for all remaining locations in the array
        arr[i] = val
    }
    // We return the result which contains the number of elements in the array before the input value is reached
    return result // 1
}

// Function test
print(removeElement([3, 2, 2, 3], 3))
print(removeElement([0, 1, 2, 2, 3, 0, 4, 2], 2))


// 1 + 1 + n + 1 + n + 1 = 4 + 2n
// Time complexity solution: 2n -> O(n)
