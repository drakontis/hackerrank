# https://www.hackerrank.com/challenges/plus-minus

#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

positive_numbers = 0
negative_numbers = 0
zeroes = 0

arr.each do |elem|
  if elem < 0
    negative_numbers += 1
  elsif elem > 0
    positive_numbers += 1
  else
    zeroes += 1
  end
end

size_of_array = arr.size.to_f

puts positive_numbers.to_f / size_of_array
puts negative_numbers.to_f / size_of_array
puts zeroes.to_f / size_of_array