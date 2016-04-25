def english_number number
    # we accept numbers from 0 to 100.

    if number < 0
        return 'Please enter a number zero or greater.'
    end
    if number > 100
        return 'Please enter a number 100 or less.'
    end

    numb_string = ''  # this is the string we will return.

    # "left" is how much of the number we still have left to write out.
    # "write" is the part we are writing out right now.

    left = number
    write = left/100  #how many hundreds left?
    left = left - write * 100  # subtract off those hundreds.

    if write > 0
        return 'one hundred'
    end

    write = left / 10  # how many tens left?
    left = left - write * 10  # subtract off those tens.

    if write > 0
        if write == 1 # uh oh
            # since we can't write "tenty-two"
            # instead of "twelve", we have to
            # make a special exception for these.

            if left == 0
                numb_string = numb_string + 'ten'
            elsif left == 1
                numb_string = numb_string + 'eleven'
            elsif left == 2
                numb_string = numb_string + 'twelve'
            elsif left == 3
                numb_string = numb_string + 'thirteen'
            elsif left == 4
                numb_string = numb_string + 'fourteen'
            elsif left == 5
                numb_string = numb_string + 'fifteen'
            elsif left == 6
                numb_string = numb_string + 'sixteen'
            elsif left == 7
                numb_string = numb_string + 'seventeen'
            elsif left == 8
                numb_string = numb_string + 'eighteen'
            elsif left == 9
                numb_string = numb_string + 'nineteen'
            end

            # since we took care of the digit in the
            # ones place already, we have nothing left to write.

            left = 0
        elsif write == 2
            numb_string = numb_string + 'twenty'
        elsif write == 3
            numb_string = numb_string + 'thirty'
        elsif write == 4
            numb_string = numb_string + 'forty'
        elsif write == 5
            numb_string = numb_string + 'fifty'
        elsif write == 6
            numb_string = numb_string + 'sixty'
        elsif write == 7
            numb_string = numb_string + 'seventy'
        elsif write == 8
            numb_string = numb_string + 'eighty'
        elsif write == 9
            numb_string = numb_string + 'ninety'
        end

        if left > 0
            numb_string = numb_string + ' '
        end
    end

    write = left  # how many ones left to write out?
    left = 0  # subtract off those ones.
    if write > 0
        if write == 1
            numb_string = numb_string + 'one'
        elsif write == 2
            numb_string = numb_string + 'two'
        elsif write == 3
            numb_string = numb_string + 'three'
        elsif write == 4
            numb_string = numb_string + 'four'
        elsif write == 5
            numb_string = numb_string + 'five'
        elsif write == 6
            numb_string = numb_string + 'six'
        elsif write == 7
            numb_string = numb_string + 'seven'
        elsif write == 8
            numb_string = numb_string + 'eight'
        elsif write == 9
            numb_string = numb_string + 'nine'
        end
    end
    if numb_string == ''
        # the only way "num_string" could be empty is if "number" is 0.
        return 'zero'
    end
    # if we got this far, then we had a number
    # somewhere in between 0 and 100, so we need
    # to return "num_string".
    numb_string
end

puts english_number(0)
puts english_number(9)
puts english_number(10)
puts english_number(11)
puts english_number(17)
puts english_number(32)
puts english_number(88)
puts english_number(99)
puts english_number(100)