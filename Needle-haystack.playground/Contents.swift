import Cocoa

/// Q1: Given two strings return index of first occurrence of needle in haystack or return -1 if needle is not part of haystack
/// Example:
/// Haystack = hello
/// Needle = ll
/// Output = 2
/// Haystack = books
/// Needle = ak
/// Output = -1
/// Solution: Idea behind this is to loop over haystack until you find first char of needle then run another loop for each char in needle to match its value
/// to the current char index value of haystack. When internal loop index + 1 is equal to length of needle then return current haystack index.


func needleHaystack(_ haystack: String, _ needle: String) -> Int {
    // We assign the inputs to variable arrays
    var hayArr = Array(haystack) // 1
    var needleArr = Array(needle) // 1
    
    // We get the count of the variable arrays
    var hayCount = hayArr.count // 1
    var needleCount = needleArr.count // 1
    
    // We check if the count of the hayStack array is less than the needle, if so ..
    if hayCount < needleCount { // 1
        // we return -1 and end the function
        return -1
    }
    
    // We check if the count of the hayStack array is less than 0, if so ..
    if hayCount <= 0 { // 1
        // we return -1 and end the function
        return -1
    }
    
    // We calculate the loop length
    let loopLength = hayCount - needleCount // 1
    
    // We loop through the loop length
    for i in 0...loopLength { // n
        // checking if the first index of the hayStack array is equal to the first element of the needle array, if so ...
        if hayArr[i] == needleArr[0] {
            // we loop from the first element of the needle array up to the needle count
            for j in 0..<needleCount { // m
                // checking if the element in the hayStack array is NOT equal
                // to the element in the needle array being looped over, if so ...
                if hayArr[i+j] != needleArr[j] {
                    // we exit the loop
                    break
                }
                // if j + 1 (needle array count + 1) is the same as the needle count
                if j + 1 == needleCount {
                    // we return the index where the needle was found in the hayStack array
                    return i
                }
            }
        }
    }
    // If all fails, we return -1
    return -1 // 1
}


// Function test
print(needleHaystack("hello", "ll"))
print(needleHaystack("book", "ak"))

// (1 * 8) + (n * m) = 8 + (nm)
// Time complexity solution: (nm) -> O(nm)
