import Foundation

/// Given an array of integers and an integer k, find out whether there are two distinct indices i and j in the array such that nums[i] = nums[i]
/// and the absolute difference between i and i is at most k.
/// Example 1:
/// Input: nums = [1, 2, 3, 1], k = 3
/// Output: true
/// Example 2:
/// Input: nums = [1, 0, 1, 1], k = 1
/// Output: true
/// Example 3:
/// Input: nums = [1, 2, 3, 1, 2, 3], k = 2
/// Output: false
/// Solution: Main idea behind this is that duplicate should be positioned in such a way where distance between their indexes is less than or equal to the value of k

func containsDups(_ arr: [Int], _ k: Int) -> Bool {
    // We create an empty dictionary
    var dict = [Int: Int]() // 1
    
    // We create mindist with the maximum value calculated
    var minDist = Int.max // 1
    
    // Print statement can be commented out. It's used to keep track of what's happening
    print("Input: ", arr)
    
    // We loop over the array keeping track of both the element and it's index using enumerated
    for (index, item) in arr.enumerated() { // n
        // Print statement can be commented out. It's used to keep track of what's happening
        print("item: ", item)
        
        // We check if the item in the array is in the dictionary, if not, ...
        if dict[item] != nil { // n
            // we assign the item's index to prevIndex variable for later use.
            // prevIndex will be the last known index of the item we subtract from to ...
            // get the distance between the newer(current) index when checking distance
            let prevIndex = dict[item]!
            
            // Print statement can be commented out. It's used to keep track of what's happening
            print("--- prevIndex: ", prevIndex)
            print("--- index: ", index)
            
            // We calculate the gap from the current index and the first index after ...
            // a match was found for the same item.
            let gap = index - prevIndex
            
            // Print statement can be commented out. It's used to keep track of what's happening
            print("--- gap: ", gap)
            
            // We assign the minimum distance with the minimum value between the computed gap and ...
            // the previously assigned minDist (in other words, the first minDist assigned on the ...
            // first loop iteration).
            minDist = min(gap, minDist)
            
            // Print statement can be commented out. It's used to keep track of what's happening
            print("--- minDist: ", minDist)
        }
        // We append the items from the array to the dictionary and it's index in the first loop
        // iteration
        dict[item] = index // n
        
        // Print statement can be commented out. It's used to keep track of what's happening
        print("Dict: ", dict)
    }
    
    // We check whether the minDist is less than or equal to the constant 'k'. If it's true ...
    // we return true and exit the function. If it's false,
    if minDist <= k { // 1
        return true
    }
    // we return false and exit the function.
    return false // 1
}

// Function test
print(containsDups([1, 2, 3, 1], 3))
print("\n")
print(containsDups([1, 0, 1, 1], 1))
print("\n")
print(containsDups([1, 2, 3, 1, 2, 3], 2))


// 1 + 1 + n + n + n + 1 + 1 = 4 + 3n
// Solution time complexity: 3n -> O(n)
