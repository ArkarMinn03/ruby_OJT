require 'date'

def calculateAge(birthdate)
    current_date = Date.today

    if(current_date.year >= birthdate.year)
        year = current_date.year - birthdate.year

        if(current_date.month < birthdate.month)
            year -= 1
        elsif(current_date.month == birthdate.month)
            if(current_date.day < birthdate.day )
                year -= 1
            end
        end
    else
        year = 0
    end
    
    if(year > 18)
        puts "#{year}, Adult"
    else
        puts "#{year}, Child"
    end
end

puts "Enter your date of birth in (DD/MM/YYYY) format: "
input = Date.parse(gets.chomp.to_s)
# dob = Date.parse(input)
calculateAge(input)
