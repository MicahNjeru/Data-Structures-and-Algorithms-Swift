import Cocoa

/// Given a non-empty strings, you may delete at most one character. Judge whether you can make it a palindrome.
/// Example:
/// Input: aba
/// Output: true
/// Input: abca
/// Output: true
/// Solution: Keep a flag for first encountered out of order element and continue to loop forward

func validPalindrome(_ str: String) -> Bool {
    // We create an array variable of input string
    var arr = Array(str) // 1
    
    // We pass in the array to the internal valid palindrom function to check for conditions
    // it returns whether the string is able a palindrome-able
    return internalValidPalindrome(arr, 0, arr.count - 1, removed: false) // 1
}


func internalValidPalindrome(_ arr: [Character], _ startPointer: Int, _ endPointer: Int, removed: Bool) -> Bool {
    // We create and assign pointer indexes to variables
    var i = startPointer // 1
    var j = endPointer // 1
    
    // We loop over the array as long as the pointer indexes are not equal
    while i <= j { // n
        // if the character in the array at pointer i is the same as the character at pointer j ...
        if arr[i] == arr[j] {
            // we increment i and decrement j to move towards the middle
            i += 1
            j -= 1
            // if not ...
        } else {
            // we check if the removed flag variable is true, if it is ...
            if removed == true {
                // we return that the string is not a palindrome and cannot be a palindrome after removing
                // one character and we return false
                return false
                // if not ...
            } else {
                // we recursively run the internal valid palindrome function by incrementing i and setting the
                // removed flag variable to true OR by decrementing j and setting the removed flag variable to false
                // and check if we get true
                return internalValidPalindrome(arr, i + 1, j, removed: true) || internalValidPalindrome(arr, i, j - 1, removed: true)
            }
        }
    }
    // we return true if all above conditions satisfy to true
    return true // 1
}


// Function test
print(validPalindrome("aba"))
print(validPalindrome("abca"))

// 1 + 1 + 1 + 1 + 1 + n = 5 + n
// Time complexity solution: n -> O(n)
// Time complexity will still be O(n) even though we are recursively calling the function in of itself because ...
// the value will be much much smaller and we're only interating over the loop once and incrementing and decrementing
// the counters from the start
