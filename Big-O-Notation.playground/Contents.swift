import Foundation


/// Big O Notation example codes

func bigO(){
    // O(1) - constant/variable creation (runs only once)
    let name = "Micah"
    
    // O(n) - loops that repeat a specific number of times
    for i in 0...10 {
        print(i)
    }
    
    // O(n^2) - loop that executes 2 times inside of the outer loop
    for i in 0...2 {
        for j in 0...2{
            print(i, j)
        }
    }
    
    // O(n^m) - internal loops run for every single output for the external loop
    for i in 0...2 {
        for j in 0...2 {
            for k in 0...2 {
                for l in 0...2 {
                    print(i, j, k, l)
                }
            }
        }
    }
    
    // O(log n)
    // binary search - halves the data set each time
}

