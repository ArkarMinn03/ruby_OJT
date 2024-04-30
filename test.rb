# def number?(obj)
#     obj = obj.to_s unless obj.is_a? String
#     /\A\d+\z/.match(obj)
# end

# puts "Enter a number:"
# number = nil
# loop do
#   number = gets.chomp
#   break if number?(number)
#   puts "That is not a number."
# end
# puts "#{number} is indeed a number."
# arr = Array.new
# for i in 0...3
#     puts "Enter a name: "
#     arr<<gets.chomp.to_s
# end
# print arr


#file creating
# File.open("testing2.txt","w") do |f|
#     f.write("tada tada tada tininini tini")
# end

# noteFile = File.new("testing2.txt","r")
# if noteFile
#     content = noteFile.read
#     puts content
# else
#     puts "Unable to open file"
# end

#class and inheritance

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

mgmg = Person.new("mgmg")
mgmg.print_name()

agag = Student.new("agag","asd-0123")
agag.print_name()
agag.print_roll_number()
