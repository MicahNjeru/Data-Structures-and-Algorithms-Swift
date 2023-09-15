import Cocoa

/// Q1: Write a program that outputs the string representation of numbers from 1 to n.
/// But for multiples of three it should output "Fizz" instead of the number and for the multiples of five output "Buzz".
/// For numbers which are multiples of both three and five output "FizzBuzz".
/// Example: n = 15
/// Output: [ "1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"]
/// Solution: Main idea behind this is to handle multiples of 3 and multiples of 5 separately but handling multiples of both 3 and 5 before handling them individually if n is less then or equal to 0 then return

func fizzBuzz(_ number: Int) {
    for i in 1...number { // n
        if i % 3 == 0 && i % 5 == 0 {
            print("FizzBuzz")
        } else if i % 3 == 0 {
            print("Fizz")
        } else if i % 5 == 0 {
            print("Buzz")
        } else {
            print(i)
        }
    }
}

// Function test
fizzBuzz(15)

// = n
// Time complexity solution: n -> O(n)
