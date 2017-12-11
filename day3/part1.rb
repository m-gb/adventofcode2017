#!/usr/bin/env ruby

def spiral(input) # 17
  root = Math.sqrt(input).ceil # Returns the rounded square root of input. 5
  upper_boundary = root ** 2 # Returns the square of root. 25
  boundary_steps = root - 1 # Returns the Manhattan Distance (steps) of the upper boundary. 4
  boundary_x = boundary_steps / 2 # Returns the x coordinate of the upper boundary. 2
  boundary_y = -(boundary_steps / 2) # Returns the y coordinate of the upper boundary. -2
  bottom_left_corner = upper_boundary - boundary_steps # 21
  top_left_corner = bottom_left_corner - boundary_steps # 17
  top_right_corner = top_left_corner - boundary_steps # 13
  bottom_right_corner = top_right_corner - boundary_steps + 1 # 10
  
  case
  when input >= bottom_left_corner
    diff = upper_boundary - input # Returns the number of steps between upper boundary and input. 
    input_x = boundary_x - diff # x can change.
    input_y = boundary_y # y is the same as boundary's.
  when input >= top_left_corner
    diff = bottom_left_corner - input # 21 - 17 = 4
    input_x = boundary_x - boundary_steps # 2-4=-2
    input_y = boundary_y + diff # -2+4=2
  when input >= top_right_corner
    diff = top_left_corner - input
    input_x = diff - boundary_x
    input_y = boundary_y + boundary_steps
  when input >= bottom_right_corner
    diff = top_right_corner - input
    input_x = boundary_x # x is the same as boundary's.
    input_y = diff + boundary_y
  end 
end

spiral(1) # 0
spiral(12) # 3
spiral(23) # 2
spiral(1024) # 31
# Puzzle input:
spiral(312051) #