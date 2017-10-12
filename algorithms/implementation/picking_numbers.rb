# https://www.hackerrank.com/challenges/picking-numbers/problem

#!/bin/ruby

def calculate(array)
  max_set_size = 1

  array.each_with_index do |outer_elem, outer_index|
    current_set = []

    current_set << outer_elem

    array[outer_index+1..-1].each do |inner_elem|
      if (inner_elem - outer_elem).zero? || (inner_elem - outer_elem).abs == 1
        current_set << inner_elem
      else
        break
      end
    end

    if current_set.size > max_set_size
      max_set_size = current_set.size
    end

  end

  max_set_size
end

n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i).sort

if a.empty?
  puts 0
else
  puts calculate(a)
end
