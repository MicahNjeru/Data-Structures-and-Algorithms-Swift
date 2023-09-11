import Foundation

/// Q1: Given two arrays, write a function to compute their intersection.
/// Example:
/// Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2].
/// Note:
/// - Each element in the result must be unique.
/// - The result can be in any order.
/// Solution: Basic concept is to create two sets to store unique elements and then use intersection method of Hashset to extract unique common elements.

func inter(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
    // We create an empty set to store unique values from first array
    var set1 = Set<Int>() // 1
    
    // We loop through the 1st array and insert elements to the 1st set
    for item in arr1 { //n
        set1.insert(item)
    }
    
    // We create an empty set to store unique values from second array
    var set2 = Set<Int>() // 1
    
    // We loop through the 2nd array and insert elements to the 2nd set
    for item in arr2 { // n
        set2.insert(item)
    }
    
    // We check for elements that intersect in both sets and return them as an array
    return Array(set1.intersection(set2)) // n
}

// Function test
print(inter([1, 2, 2, 1], [2, 2]))

// 1 + n + 1 + n + n = 2 + 3n
// Solution time complexity: 3n -> O(n)
