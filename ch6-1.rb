letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters

line_width = 50
puts (                 'Old Mother Hubbard'.center(line_width))
puts (              'Sat in her cupboard'.center(line_width))
puts (             'Eating her curds and whey,'.center(line_width))
puts (               'When along came a spider'.center(line_width))
puts (          'Who sat down beside her'.center(line_width))
puts (               'And scared her poor shoe dog away.'.center(line_width))

line_width = 40
str = '---> text <---'
puts (str.ljust(line_width))
puts (str.center(line_width))
puts (str.rjust(line_width))
puts (str.ljust(line_width/2) + str.rjust(line_width))

puts "WHADDYA WANT?"
answer = gets.chomp.to_s
puts "WHADDYA MEAN, " + '"' + answer + '"?!?  YOU\'RE FIRED!'

