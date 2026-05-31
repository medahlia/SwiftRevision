import UIKit

// checkpoint 1 | D-2
// MARK: converting temperatures from Celsius to Fahrenheit
/*
let celsius: Double = 18
var fahrenheit: Double
fahrenheit = celsius * 9 / 5 + 32
print("from Celsius: \(celsius) \nto Fahrenheit: \(fahrenheit)")
*/


// checkpoint 3 | D-6
// MARK: fizz buzz
/*
for number in 1...100 {
    if number.isMultiple(of: 3) && number.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if number.isMultiple(of: 3) {
        print("Fizz")
    } else if number.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(number)
    }
}
*/

/*
for number in 1...100 {
    var output = ""
    
    if number.isMultiple(of: 3) { output += "Fizz" }
    if number.isMultiple(of: 5) { output += "Buzz" }
    
    print(output.isEmpty ? number : output)
}
*/
