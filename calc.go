package main

import "fmt"

func main() {
    var num1 float64
    var num2 float64
    var operator string
    var result float64
    fmt.Printf("Enter the First Number: ")
    fmt.Scanln(&num1)
    fmt.Printf("Enter Operator (+,-,*,/): ")
    fmt.Scanln(&operator)
    fmt.Printf("Enter the Second Number: ")
    fmt.Scanln(&num2)
    switch operator {
        case "+":
            result = num1 + num2
            fmt.Printf("%.3f %s %.3f = %.3f", num1, operator, num2, result)
        case "-":
            result = num1 - num2
            fmt.Printf("%.3f %s %.3f = %.3f", num1, operator, num2, result)
        case "*":
            result = num1 * num2
            fmt.Printf("%.3f %s %.3f = %.3f", num1, operator, num2, result)
        case "/":
            if num2 == 0 {
                fmt.Println("Cannot Be Divided to 0")
            }else{
                result = num1 / num2
                fmt.Printf("%.3f %s %.3f = %.3f", num1, operator, num2, result)
            }
        default:
            fmt.Println("Invalid Operator")
    }
}