#!/usr/bin/env ruby

def checksum(input)
  array = input.split("\n") # Returns an array of the given sequence based on newlines.
  values = []

  array.each do |row|
    array2 = row.split("\t").map(&:to_i) # Returns a new array of each row based on tabs.
    difference = array2.max - array2.min
    values << difference
  end

  sum = values.reduce(:+)
  puts sum
end

checksum("5\t1\t9\t5
7\t5\t3
2\t4\t6\t8")

sequence = File.read('./input.txt')
checksum(sequence)