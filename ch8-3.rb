puts "Enter a word... Any word"

word_array = []

while true
    word = gets.chomp

    if word == ''
        break
    end

    word_array.push word

end

puts "Here, I sorted the words for you:"
puts word_array.sort.join(', ')

