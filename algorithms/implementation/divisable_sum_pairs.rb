# https://www.hackerrank.com/challenges/divisible-sum-pairs/problem

#!/bin/ruby

def divisibleSumPairs(n, k, ar)
  divisible_pairs = 0

  ar.each_with_index do |elem, index|
    ar[index+1..-1].each do |secondary_elem|
      if (elem + secondary_elem)%k == 0
        divisible_pairs += 1
      end
    end
  end

  divisible_pairs
end

n, k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = divisibleSumPairs(n, k, ar)
puts result
