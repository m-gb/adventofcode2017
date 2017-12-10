#!/usr/bin/env ruby

def digitsum(input)
  array = input.to_s.split('').map(&:to_i) # Returns an array of the given sequence.
  array2 = [0] # Default value for when there are no matches.
  
  if array[0] == array.last
    array2 << array[0]
  end

  array.each_with_index do |number,index|
    if array[index] == array[index+1]
      array2 << number
    end
  end

  result = array2.reduce(:+) # Returns the sum of the repeated digits
  puts result
end

digitsum(1122) # 3
digitsum(1111) # 4
digitsum(1234) # 0
digitsum(91212129) # 9

sequence = File.read('./input.txt')
digitsum(sequence) # 1049