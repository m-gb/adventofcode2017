#!/usr/bin/env ruby

def checksum(input)
  array = input.split("\n").map{ |row| row.split("\t").map(&:to_i)} # Returns an array of integer arrays.
  values = []

  array.each do |row|
    values << row.minmax.reverse.reduce(:-)
  end

  sum = values.reduce(:+)
  puts sum
end

checksum("5\t1\t9\t5
7\t5\t3
2\t4\t6\t8")

sequence = File.read('./input.txt')
checksum(sequence)