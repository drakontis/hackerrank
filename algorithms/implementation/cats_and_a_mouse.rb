# https://www.hackerrank.com/challenges/cats-and-a-mouse/problem

#!/bin/ruby

def find_winner(x, y, z)
  cat_x_distance = (z - x).abs
  cat_y_distance = (z - y).abs

  if cat_x_distance < cat_y_distance
    'Cat A'
  elsif cat_x_distance > cat_y_distance
    'Cat B'
  else
    'Mouse C'
  end
end

q = gets.strip.to_i
for a0 in (0..q-1)
  x,y,z = gets.strip.split(' ')
  x = x.to_i
  y = y.to_i
  z = z.to_i

  puts find_winner(x, y, z)
end
