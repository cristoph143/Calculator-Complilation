# return the result of the calculator
def calculator(num1, num2, operator)
    case operator
    when "+"
        num1 + num2
    when "-"
        num1 - num2
    when "*"
        num1 * num2
    when "/"
        if num2 == 0
            return "Error: division by zero"
        else
            num1 / num2
        end
    end
end

# input operator function
def input_operator
    puts "Please input operator:"
    operator = gets.chomp
    if operator == "+" || operator == "-" || operator == "*" || operator == "/"
        return operator
    elsif operator == "q"
        return "q"
    else
        puts "Invalid operator"
        input_operator
    end
end


while true
    operator = input_operator
    if operator == "q"
        break
    end
    puts "Enter your first number:"
    num1 = gets.chomp
    puts "Enter your second number:"
    num2 = gets.chomp
    result = calculator(num1.to_f, num2.to_f, operator)
    puts "#{num1} #{operator} #{num2} = #{result}"
end