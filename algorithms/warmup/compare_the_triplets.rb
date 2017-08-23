# https://www.hackerrank.com/challenges/compare-the-triplets

#!/bin/ruby

def solve(a0, a1, a2, b0, b1, b2)
  points_for_alice = 0
  points_for_bob = 0

  if a0 > b0
    points_for_alice += 1
  elsif a0 < b0
    points_for_bob += 1
  end

  if a1 > b1
    points_for_alice += 1
  elsif a1 < b1
    points_for_bob += 1
  end

  if a2 > b2
    points_for_alice += 1
  elsif a2 < b2
    points_for_bob += 1
  end

  [points_for_alice, points_for_bob]
end

a0, a1, a2 = gets.strip.split(' ')
a0 = a0.to_i
a1 = a1.to_i
a2 = a2.to_i
b0, b1, b2 = gets.strip.split(' ')
b0 = b0.to_i
b1 = b1.to_i
b2 = b2.to_i
result = solve(a0, a1, a2, b0, b1, b2)
print result.join(" ")