class Array
    def shuffle
        arr = self
        shuf = []

        while arr.length > 0
            # randomly pick one element of the Array
            rand_index = rand(arr.length)

            #now go through each item in the Array
            # putting them all into new_arr except for
            #the randomly chosen one, which goes into
            #shuf.
            curr_index = 0
            new_arr = []
            arr.each do |item|
                if curr_index == rand_index
                    shuf.push item
                else
                    new_arr.push item
                end

                curr_index = curr_index + 1
            end

            #replace the original array with the new
            #smaller array
            arr = new_arr
        end
        shuf
    end
end
class Integer
    def factorial
        if self <= 1
            1
        else
            self * (self - 1).factorial
        end
    end
    def to_roman
        roman = ''

        roman = roman + 'M' * (self / 1000)
        roman = roman + 'D' * (self % 1000 / 500)
        roman = roman + 'C' * (self % 500 / 100)
        roman = roman + 'L' * (self % 100 / 50)
        roman = roman + 'X' * (self % 50 / 10)
        roman = roman + 'V' * (self % 10 / 5)
        roman = roman + 'I' * (self % 5 / 1)

        roman
    end
end

puts [1,2,3,4,5].shuffle
puts 7.factorial
puts 73.to_roman