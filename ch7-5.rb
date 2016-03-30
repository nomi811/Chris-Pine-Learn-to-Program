puts "Hey there, Sonny! How are you?"
bye_num = 0

while true
    input = gets.chomp
    rand_num = (rand(10..60))
    year = '19' + rand_num.to_s

    if input == 'BYE'
        bye_num +=1
    else
        bye_num = 0
    end

    if bye_num >= 3
      puts "BYE, SWEETIE!"
      break
    end

    if input == input.upcase
      puts 'NO, NOT SINCE ' + year + '!'
    else
      puts 'HUH?  SPEAK UP, SONNY!'
    end
end
