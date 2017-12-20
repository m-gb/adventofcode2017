#!/usr/bin/env ruby

def jump(input)
  array = input.split("\n").map(&:to_i)
  steps = 0
  index = 0
  
  begin
    old_index = index
    index += array[index]
    array[old_index] += 1
    steps += 1
  end while index < array.length
  
  puts steps
end

jump("0
      3
      0
      1
      -3") # 5
list = File.read('./input.txt') 
jump(list) # 355965
