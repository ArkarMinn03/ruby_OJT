def createDiamond(num)
    space = num -1

    #first half of stars
    for i in 0...num
        for j in 0...space
            print " "
        end
        for j in 0..i
            print "*"
        end
        for j in 1...(num - space)
            print "*"
        end
        puts
        space -= 1
    end

    #second half of stars
    space = 1s
    for i in (num - 2).downto(0)
        for j in 0...space
            print " "
        end
        for j in 0..i
            print "*"
        end
        for j in 1...(num - space)
            print "*"
        end
        puts
        space += 1
    end
end

puts "Enter any number: "
num = gets.chomp.to_i
createDiamond(num)