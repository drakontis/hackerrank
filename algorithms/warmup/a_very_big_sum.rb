# https://www.hackerrank.com/challenges/a-very-big-sum?h_r=next-challenge&h_v=zen

#!/bin/ruby

def aVeryBigSum(n, ar)
  sum = 0

  ar.each do |elem|
    sum += elem
  end

  sum
end

n = gets.strip.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = aVeryBigSum(n, ar)
puts result;