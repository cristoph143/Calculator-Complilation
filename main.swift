// return the result of the calculator.
func calculate(num1: Float, num2: Float, op: String) -> Float {
    var result: Float = 0
    switch op {
    case "+":
        result = num1 + num2
    case "-":
        result = num1 - num2
    case "*":
        result = num1 * num2
    case "/":
        // if the second number is 0, return 0.
        if num2 == 0 {
            result = 0
        } else {
            result = num1 / num2
        }
    default:
        result = 0
    }
    return result
}

var operatorInput: String = ""

func operatorInputfunc() -> String {
    repeat {
        // ask what operator to be inputted
        print("What operator do you want to use?")
        operatorInput = readLine()!
        // while the operator input is not +, -, *, / throw an error
        if operatorInput != "+" && operatorInput != "-" && 
        operatorInput != "*" && operatorInput != "/" {
            print("Please input a valid operator.")
        }
        // if operatorInput is q
        if operatorInput == "q" {
            break
        }
    } while operatorInput != "+" && operatorInput != "-" && 
        operatorInput != "*" && operatorInput != "/"
    return operatorInput
}

repeat {
    // call the operatorInputfunc function
    operatorInput = operatorInputfunc()
    // if operatorInput is q
    if operatorInput == "q" {
        print("Goodbye!")
        break
    }
    // get the float num1 and float num2
    print("Enter the first number:")
    let num1 = Float(readLine()!)!
    print("Enter the second number:")
    let num2 = Float(readLine()!)!
    // calculate the result
    let res = calculate(num1: num1, num2: num2, op: operatorInput)
    // print and format the result
    print("\(num1) \(operatorInput) \(num2) = \(res)")
} while operatorInput != "q"