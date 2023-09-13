import Foundation

/// Q1: Given two arrays, write a function to compute their intersection.
/// Example:
/// Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2, 2].
/// Note:
/// - Each element in the result should appear as many times as it shows in both arrays
/// - The result can be in any order
/// Follow up:
/// - What if the given array is already sorted? How would you optimize your algorithm?
/// - What if nums1’s size is small compared to nums2’s size? Which algorithm is better?
/// Solution: Basic idea is to first loop over larger array and put num and its freq (times its present) in a dictionary.
/// Then loop over second array to check if number exists in dictionary. If it does exists in dictionary then
/// put it in result array and reduce frequency count by 1, check if frequency is 0 then remove item from dictionary.

func findIntersect(largeArray: [Int], smallArray: [Int]) -> [Int] {
    var dict = [Int:Int]() // 1
    var result = [Int]() // 1
    
    for item in largeArray { // n
        if dict[item] != nil {
            dict[item]! += 1
        } else {
            dict[item] = 1
        }
    }
    
    for item in smallArray { // m
        if dict[item] != nil {
            result.append(item)
            dict[item]! -= 1
            if dict[item]! == 0 {
                dict[item] = nil
            }
        }
    }
    
    return result // 1
}

func inter(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
    if arr1.count > arr2.count { // 1
        return findIntersect(largeArray: arr1, smallArray: arr2) // 1
    } else {
        return findIntersect(largeArray: arr2, smallArray: arr1) // 1
    }
}


// Function test
print(inter([1, 2, 2, 1], [2, 2]))
print(inter([1, 2, 2, 1, 3], [2, 2, 2]))

// Func1: 1 + 1 + 1 + n + m = 3 + n + m
// Func2: 1 + 1 + 1 = 3

// Final time complexity solution: 6 + n + m -> O(n + m)
