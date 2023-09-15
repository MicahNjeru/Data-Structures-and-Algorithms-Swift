import Cocoa

/// A palindromic string is a string which reads same when it is reversed. Write a func to check if string is palindrome or not
/// Example:
/// Input: foo
/// Output: False
/// Explanation: reversing foo produces oof meaning it's not a palindrome
/// Input: bob
/// Output: True
/// Solution: Create two pointers, one starting from the beginning of the string and another from the end and compare two chars at those indexes.
/// If two pointers point at chars that are equal then increment startPointer and decrement endPointer till they both meet in the middle.
/// If at any point two chars are not equal then you have non-palindromic string


func isPalindrome(_ str: String) -> Bool {
    var arr = Array(str.lowercased()) // 1
    var i = 0 // 1
    var j = arr.count - 1 // 1
    
    while i <= j { // n
        if arr[i] == arr[j] {
            i += 1
            j -= 1
        } else {
            return false
        }
    }
    return true // 1
}

// Function test
isPalindrome("foo")
isPalindrome("bob")

// 1 + 1 + 1 + n + 1 = 4 + n
// Time complexity solution: n -> O(n)

