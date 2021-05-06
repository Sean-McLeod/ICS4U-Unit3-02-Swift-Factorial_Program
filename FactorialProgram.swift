/* This program uses recursion
   to create a factorial program.

   Sean McLeod
   2021/05/06
*/

func factorial(factorialInt: Int) -> Int {
    // This function demonstrates the factorial program
    if factorialInt == 0 || factorialInt == 1 {
        return 1
    } else {
        // return & pass parameter
        return factorialInt * factorial(factorialInt: factorialInt-1)
    }
}


let factorialOutcome:Int

// input
print("Enter a number to get the factorial value of it: ")
let userNumber = readLine()

if let factorialNumber = Int(userNumber!) {
    if factorialNumber >= 0 {
        // pass & accept parameters
        factorialOutcome = factorial(factorialInt: factorialNumber)
        // output
        print("\nFactorial \(factorialNumber) is \(factorialOutcome)")
    } else {
        print("\nPlese enter a positive number")
    }
} else {
    print("\nThis is not an integer")
}
