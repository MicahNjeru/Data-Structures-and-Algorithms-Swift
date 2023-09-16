import Cocoa

/// Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1
/// Example:
/// Input: devtechie
/// Output: 0
/// Input: interactive
/// Output: 1
/// Solution: Create dictionary to keep track of characters and flag if they appear more then once or not.

func isFirstUnique(_ str: String) -> Int {
    // We convert the input string into an array for looping over and create a dictionary
    // for saving the info using a bool on unique elements
    var arr = Array(str) // 1
    var dict = [Character: Bool]() // 1
    
    // We loop over the array and ...
    for item in arr { // n
        // check if it's in the dictionary already and if so ...
        if dict[item] != nil{
            // we set its value to false (not unique) and if it's not already present ...
            dict[item] = false
        } else {
            // we insert it into the dictionary and set its value to true
            dict[item] = true
        }
    }
    
    // We loop over the array keeping track of its value and index position ...
    for (index, item) in arr.enumerated() { // n
        // then check if the item in the array has a true value in the dictionary, if so ...
        if dict[item]! == true {
            // we return the index of that item
            return index
        }
    }
    // If all fails, meaning there's no unique character, we return -1
    return -1 // 1
}

// Function test
print(isFirstUnique("devtechie"))
print(isFirstUnique("interactive"))


// 1 + 1 + n + n + 1 = 3 + 2n
// Time complexity solution: 2n -> O(n)
