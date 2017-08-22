# https://www.hackerrank.com/challenges/diagonal-difference

#!/bin/ruby

n = gets.strip.to_i
a = Array.new(n)
for a_i in (0..n-1)
  a_t = gets.strip
  a[a_i] = a_t.split(' ').map(&:to_i)
end

primary_diagonal = 0
secondary_diagonal = 0

for i in (0..n-1)
  primary_diagonal += a[i][i]
  secondary_diagonal += a[i][n-1-i]
end

puts (primary_diagonal - secondary_diagonal).abs