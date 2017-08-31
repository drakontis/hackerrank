# https://www.hackerrank.com/challenges/big-sorting

#!/bin/ruby

n = gets.strip.to_i
unsorted = Array.new(n)
for unsorted_i in (0..n-1)
  unsorted[unsorted_i] = gets.strip
end

integers_array = []

unsorted.each do |elem|
  integers_array << elem.to_i
end

integers_array.sort!

integers_array.each do |elem|
  puts elem
end
