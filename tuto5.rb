require 'date'

current_day = Date.today

prev_days = Array.new
for i in 1..5
    prev_days<<current_day.prev_day(i).strftime('%A')
end

puts "The current day is '#{current_day.strftime('%A')}' and the last 5 days are: "
print "#{prev_days}\n\n"