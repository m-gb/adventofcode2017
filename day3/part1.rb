#!/usr/bin/env ruby

def spiral(input)
  root = Math.sqrt(input).ceil # Returns the rounded square root of input.
  root += 1 if root.even? 
  upper_boundary = root ** 2 # Returns the square of root.
  boundary_steps = root - 1 # Returns the Manhattan Distance (steps) of the upper boundary.
  boundary_x = boundary_steps / 2 # Returns the x coordinate of the upper boundary.
  boundary_y = -(boundary_steps / 2) # Returns the y coordinate of the upper boundary. Boundary's y is always negative.
  bottom_left_corner = upper_boundary - boundary_steps
  top_left_corner = bottom_left_corner - boundary_steps
  top_right_corner = top_left_corner - boundary_steps
  
  case
  when input >= bottom_left_corner
    diff = upper_boundary - input # Returns the number of steps between upper boundary and input. 
    input_x = boundary_x - diff # x can change.
    input_y = boundary_y # y is the same as boundary's.
  when input >= top_left_corner
    diff = bottom_left_corner - input
    input_x = boundary_x - boundary_steps
    input_y = boundary_y + diff
  when input >= top_right_corner
    diff = top_left_corner - input
    input_x = diff - boundary_x
    input_y = boundary_y + boundary_steps
  when input < top_right_corner
    top_right_y = -boundary_y # Compares to top_right_corner's y coordinate.
    diff = top_right_corner - input
    input_x = boundary_x # x is the same as boundary's.
    input_y = top_right_y - diff 
  end
  puts input_x.abs + input_y.abs # Calculates the Manhattan Distance (steps).
end

spiral(1) # 0
spiral(12) # 3
spiral(23) # 2
spiral(1024) # 31
# Puzzle input:
spiral(312051) # 430