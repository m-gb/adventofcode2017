#!/usr/bin/env ruby

def checksum(input)
  array = input.split("\n").map{ |row| row.split("\t").map(&:to_i)} # Returns an array of integer arrays.
  values = []

  array.each do |row|
    row.each do |a|
      row.each do |b|
        if a != b && a % b == 0 # Checks whether two elements in the array are divisible.          
          values << a / b

        end
      end
    end
  end

  sum = values.reduce(:+)
  puts sum
end

checksum("5\t9\t2\t8
9\t4\t7\t3
3\t8\t6\t5") # 9

sequence = File.read('./input.txt')
checksum(sequence) # 191
