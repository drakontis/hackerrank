# https://www.hackerrank.com/challenges/ctci-array-left-rotation/problem

#!/bin/ruby

def shift_array(array, number_of_shifts)
  (number_of_shifts%array.size).times do
    array << array.shift
  end

  array.join(' ')
end

n,k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

print shift_array(a, k)
