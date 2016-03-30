puts "Give me a starting year."
start_year = gets.chomp.to_i

puts "Give me an ending year."
end_year = gets.chomp.to_i
leap_year = start_year

puts "These years are leap lears: "

while leap_year <= end_year

    if leap_year % 4 == 0
        if leap_year % 100 != 0 || leap_year % 400 == 0
        puts leap_year
        end
    end
    leap_year += 1
end