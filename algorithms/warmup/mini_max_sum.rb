# https://www.hackerrank.com/challenges/mini-max-sum

#!/bin/ruby

arr = gets.strip
arr = arr.split(' ').map(&:to_i)

mini_sum = 0
max_sum = 0

arr.sort.each_with_index do |elem, index|
  mini_sum += elem unless ((index + 1) - arr.size).zero?
  max_sum += elem  unless index.zero?
end

puts "#{mini_sum} #{max_sum}"