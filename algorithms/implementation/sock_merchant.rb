# https://www.hackerrank.com/challenges/sock-merchant/problem

#!/bin/ruby

def sockMerchant(n, ar)
  number_of_pairs = 0

  while !ar.empty?
    elements = ar.select{|elem| elem == ar.first}

    ar.delete(ar.first)
    number_of_pairs += elements.size/2
  end

  number_of_pairs
end

n = gets.strip.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = sockMerchant(n, ar)
puts result
