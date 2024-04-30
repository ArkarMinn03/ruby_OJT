def checkOperator(op)
    if(op == "+" || op == "-" || op == "*" || op == "/")
        return true
    else
        puts "The operator should be [+, -, *, /] only!"
        return false
    end
end

def checkDecision(check)
    if(check == "Stop" || check == "Continue")
        return true
    else
        puts "Answer only [Stop] or [Continue] !"
        return false
    end
end

def calculate(num1, num2, op)

    result = 0
    case op
    when "+"
        result = num1 + num2
    when "-"
        result = num1 - num2
    when "*"
        result = num1 * num2
    else
        result = num1 / num2
    end

    return result
end

begin
    begin
        puts "Enter the first number (only in integer): "
        num1 = gets.chomp.to_s
    end until /\A\d+\z/.match(num1)

    begin
        puts "Choose the operator (+, -, *, /): "
        op = gets.chomp.to_s
    end until checkOperator(op)

    begin
        puts "Enter the second number (only in integer): "
        num2 = gets.chomp.to_s
    end until /\A\d+\z/.match(num2)

    result = calculate(num1.to_i, num2.to_i, op)
    puts "The result is #{result}\n\n"
    
    begin
        puts "Make another calculation? [Stop / Continue]: "
        check = gets.chomp.to_s.capitalize()
    end until checkDecision(check)

end until check == "Stop"
