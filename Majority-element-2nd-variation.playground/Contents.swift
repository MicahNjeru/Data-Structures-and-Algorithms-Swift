import Foundation

/// Question: Given an integer array of size n, find all elements that appear more than [n/3] times.
/// Example 1:
/// Input: [3, 2, 3]
/// Output: [3]
/// Example 2:
/// Input: [1, 1, 1, 3, 3, 2, 2, 2]
/// Output: [1, 2]
/// Solution: Create a dictionary or hashmap and store number and its count.
/// Then in another loop just iterate over the dictionary and if value of the key-value pair is more than n/3 insert it into result array.


func majority(_ arr: [Int]) -> [Int] {
    // We declare a dictionary to store key as the unique numbers in the list we want to loop over
    // then we will later on have the number count as the value
    var dict = [Int : Int]() // 1
    
    // We declare an empty int array that will store the numbers we want to return.
    var result = [Int]() // 1
    
    // We loop over every number in the array ...
    for item in arr { // n
        // checking if the number in the array is already present as a key in the dictionary..
        // if it's not, as will be the case when looping for the first time, we will create the key
        // in the dictionary then ..
        if dict[item] != nil { // n
            // we will add the count of that number as its value
            dict[item] = dict[item]! + 1 // n
            
            // if the number from the array we're looping is already present in the dictionary ...
        } else {
            // we then initialize the value of the key (number from array) with 1
            dict[item] = 1 // n
        }
    }
    
    // We loop over the dictionary key & value pair ...
    for (key, value) in dict { // n
        // checking if the value of the key is greater than 1/3 of the array count.
        if value > arr.count/3 { // n
            // If it is, then we append the key into our result array as one of the numbers to be returned.
            result.append(key)
        }
    }
    
    // We then return the array containing all the numbers from the array that were more than ...
    // 1/3 of the array count
    return result // 1
}

// Funcion test
majority([3, 2, 3])
majority([1, 1, 1, 3, 3, 2, 2, 2])


// 1 + 1 + 1 + n + n + n + n + n + n = 3 + 6n
// Solution time complexity: 6n -> O(n)
