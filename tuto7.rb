class Person
    def initialize(name)
        @name = name
    end
    def print_name
        puts "The name is #{@name}\n"
    end
end

class Student < Person
    def initialize(name, roll_number)
        super(name)
        @roll_number = roll_number
    end
    def print_roll_number
        puts "The roll number is #{@roll_number}\n"
    end
end

def checkDecision(check)
    if(check == "Person" || check == "Student")
        return true
    else
        puts "Answer only [Person] or [Student]!"
        return false
    end
end

begin
    puts "Who are you? [ Person | Student ]: "
    check = gets.chomp.to_s
end until checkDecision(check.capitalize())

puts "What is your name?"
name = gets.chomp.to_s

if(check.capitalize() == "Student")
    puts "What is your roll number?"
    roll_num = gets.chomp.to_s

    student = Student.new(name, roll_num)
    student.print_name()
    student.print_roll_number()
else
    person = Person.new(name)

    person.print_name()
end
