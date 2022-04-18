-- Calculator Lua

-- A claculator function
function calc(a, b, op)
    if op == "+" then
        return a + b
    elseif op == "-" then
        return a - b
    elseif op == "*" then
        return a * b
    elseif op == "/" then
        if b == 0 then
            return "Error: division by zero"
        else
            return a / b
        end
    else
        return "Invalid operator"
    end
end

-- repeat op until op is quit then exit
repeat
    -- ask what operator to be inputted
    io.write("Enter operator (+, -, *, /, quit): ")
    op = io.read()
    -- if op is quit then exit
    if op == "quit" then
        break
    end
    -- ask for num1
    num1 = io.read()
    -- ask for num2
    io.write("Enter second number: ")
    num2 = io.read()
    -- print result format num1 op num2 = result
    print(num1 .. " " .. op .. " " .. num2 .. " = " .. calc(num1, num2, op))
until op == "quit"
