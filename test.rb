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
File.open("testing2.txt","w") do |f|
    f.write("tada tada tada tininini tini")
end

noteFile = File.new("testing2.txt","r")
if noteFile
    content = noteFile.read
    puts content
else
    puts "Unable to open file"
end

