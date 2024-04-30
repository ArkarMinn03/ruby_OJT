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
arr = Array.new
for i in 0...3
    puts "Enter a name: "
    arr<<gets.chomp.to_s
end
print arr