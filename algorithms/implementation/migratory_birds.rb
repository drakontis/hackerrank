# https://www.hackerrank.com/challenges/migratory-birds/problem

#!/bin/ruby

def migratoryBirds(n, ar)
  type_1 = type_2 = type_3 = type_4 = type_5 = 0
  ar.each do |elem|
    eval("type_#{elem} += 1")
  end

  array_of_counts = [type_1, type_2, type_3, type_4, type_5]

  array_of_counts.index(array_of_counts.max) + 1
end

n = gets.strip.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = migratoryBirds(n, ar)
puts result
