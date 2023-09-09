import Foundation

func arratIntro() {
    // creating arrays
    var array = [1, 2, 3, 4]
    
    // defining type of array
    var array2 = Array<Int>()
    array2.append(1)
    
    // defining type of array variation
    var array3 = [Int]()
    array3.append(2)
    
    // defining type of array variation
    var array4: [Int] = []
    array4.append(3)
    
    // retrieving value out of the array
    let v = array[2]
    print(v)
    
    // looping over the array
    for item in array {
        print(item)
    }
    
    // adding elements to the array
    array.append(10)
    
    // removing element from the array
    array.removeLast()
}
