begin
    puts "Enter the array size (only in integer): "
    size = gets.chomp.to_s
end until /\A\d+\z/.match(size)

animal_array = Array.new
for i in 0...(size.to_i)
    puts "Enter an animal name: "
    animal_array<<gets.chomp.to_s
end
puts "\nArray size limit reached!\n\n"

puts "The sorted input animal_array is : "
print "#{animal_array.sort!}\n"
puts "The array value is #{animal_array.length}\n\n"

puts "The new animal_array after removing the duplicated values: "
print "#{animal_array.uniq!}\n"
puts "The array value is #{animal_array.length}\n\n"

puts "The reverse of animal_array after removing teh duplicated values: "
print animal_array.sort!{|a,b| b <=> a}
puts "\nThe array value is #{animal_array.length}\n\n"

