puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp

puts "Hello, " + first_name + ' ' + middle_name + ' ' + last_name + '!  How are you?'



puts "What is your favorite number?"
number = gets.chomp.to_i
better_num = number + 1

puts "I think " + better_num.to_s + " is a better number"