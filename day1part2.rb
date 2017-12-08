#!/usr/bin/env ruby

def digitsum(input)
  array = input.to_s.split('').map(&:to_i) # Returns an array of the given sequence.
  array2 = [0] # Default value for when there are no matches.
  half = array.length/2  

  array.each_with_index do |number,index|
    # Checks whether the current digit equals the digit halfway around the circular array.
    # The shorthand if checks whether the current index is smaller than half the array's length.
    if array[index] == array[(index<half)?(index+half):(index-half)] 
      array2 << number

    end
  end

  result = array2.reduce(:+) # Returns the sum of the repeated digits
  puts result
end

digitsum(1212) # 6
digitsum(1221) # 0
digitsum(123425) # 4
digitsum(123123) # 12
digitsum(12131415) # 4 

sequence = File.read('./day1.txt')
digitsum(sequence)