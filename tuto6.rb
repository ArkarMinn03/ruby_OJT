def checkDecision(check)
    if(check == "Save" || check == "Cancel")
        return true
    else
        puts "Answer only [Save] or [Cancel] !"
        return false
    end
end

puts "Enter a title: "
title = gets.chomp.to_s

puts "Take notes: "
note = gets.chomp.to_s

begin
    puts "Do you want to save the note? [ Save | Cancel ]: "
    decision = gets.chomp.to_s
end until checkDecision(decision.capitalize())

if(decision.capitalize() == "Save")
    puts "\nCreating Note file...\n"

    File.open("#{title}.txt", "w") do |f|
        f.write("#{note}")
    end

    puts "\nFile created successfully.\n\n"

    puts "\nReading file...\n\n"
    begin
        noteFile = File.new("#{title}.txt","r")
        if noteFile
            puts "File found! printing the data...\n\n"
            content = noteFile.read
        end
    rescue
        content = "file not found on the screen!"
    end

    puts content, "\n"
else
    puts "Cancel note and the file is not saved.\n"
end
