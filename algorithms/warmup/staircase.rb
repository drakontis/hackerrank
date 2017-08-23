# https://www.hackerrank.com/challenges/staircase

#!/bin/ruby

n = gets.strip.to_i

n.times do |index|
  puts "#{' ' * (n-index-1)}#{'#' * (index+1)}"
end