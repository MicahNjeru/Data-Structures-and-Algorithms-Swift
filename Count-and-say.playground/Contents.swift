import Cocoa

/// Q1: The count-and-say sequence is the sequence of integers with the first five terms as following:
/// 1. 1
/// 2. 11
/// 3.  21
/// 4. 1211
/// 5. 111221
/// 1 is read off as "one 1" or 11.
/// 11 is read off as "two 1s" or 21.
/// 21 is read off as "one 2, then one 1" or 1211.
/// Given an integer n where 1 ≤ n ≤ 30, generate the nth term of the count-and-say sequence.
/// Note: Each term of the sequence of integers will be represented as a string.
/// Solution: Main idea behind the algorithm is to make result of first input becomes the input for next iteration.
/// So if input was 1 and output was 1,1 then 1,1 becomes input for next iteration until repeat count is met.
/// Another tip to keep in mind is to count until matching element is found and then append the count then item(that was counted) when first unmatched item is found,
/// also at the very end append final count and final element into the result.


func internalCountAndSay(_ nums: [Int]) -> [Int] {
    // We create an empty int array, assign a variable to input number and assign first element of the array to
    // current variable
    var res = [Int]() // 1
    var arr = nums // 1
    var curr = arr[0] // 1
    
    // We remove the first element of the array variable and initialize the count to 1
    arr.removeFirst() // 1
    var count = 1 // 1
    
    // We loop over the variable array
    for item in arr { // n
        // checking if the first element (before it was removed from the array) is the same as the current first element
        if curr == item {
            // if it is, we increment our counter by 1
            count += 1
            // if not ...
        } else {
            // we append the count to the result array to be returned
            res.append(count)
            // then append the current element (first element before it was removed from the array) to the result array
            res.append(curr)
            // We assign the current item to the item being looped over and reset the count to 1
            curr = item
            count = 1
        }
    }
    // We append the result array to be returned with the count, then append it with the current element
    res.append(count) // 1
    res.append(curr) // 1
    // We then return the result array
    return res // 1
}

func countAndSay(_ n: Int) -> [Int] {
    // We assign result array with 1 as the only input
    var res = [1] // 1
    
    // We check if the input number is less than or equal to 0, if so ...
    if n <= 0 {// 1
        // we return an empty array (no number to itereate over
        return []
    }
    
    // We check if the input number is equal to 1, if so ...
    if n == 1 { // 1
        // we return the result array
        return res
    }
    
    // We loop upto the number's value
    for _ in 0..<n { // n
        // then assign the result array to the output of internalCountAndSay function
        // which calls the function, and passes in the array number
        res = internalCountAndSay(res)
        // This is an optional print statement for debugging
        print(res)
    }
    // We return the result array
    return res // 1
}


// Function test
print(countAndSay(3))
print(countAndSay(4))


// (1 * 12) + (n * n) = 12 + n^2
// Time complexity solution: n^2 -> n^2
